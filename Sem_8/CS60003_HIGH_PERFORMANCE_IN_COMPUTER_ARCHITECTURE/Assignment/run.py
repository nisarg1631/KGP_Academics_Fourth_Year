# import the m5 (gem5) library created when gem5 is built
import m5
# import all of the SimObjects
from m5.objects import *
from caches import *
from argparse import ArgumentParser


parser = ArgumentParser()
parser.add_argument('--l1i_size', type=str, default='32kB')
parser.add_argument('--l1d_size', type=str, default='32kB')
parser.add_argument('--binary', type=str, default='tests/test-progs/hello/bin/x86/linux/hello')
parser.add_argument('--LQEntries', type=int, default=32)
parser.add_argument('--SQEntries', type=int, default=32)
parser.add_argument('--l2_size', type=str, default='256kB')
parser.add_argument('--bp_type', type=str, default='TournamentBP')
parser.add_argument('-ROBEntries', type=int, default=192)
parser.add_argument('--numIQEntries', type=int, default=16)

args = parser.parse_args()

# create the system we are going to simulate
system = System()

# Set the clock fequency of the system (and all of its children)
system.clk_domain = SrcClockDomain()
system.clk_domain.clock = '2GHz'
system.clk_domain.voltage_domain = VoltageDomain()

# Set up the system
system.mem_mode = 'timing'	               # Use timing accesses
system.mem_ranges = [AddrRange('1GB')]  # Create an address range

# Create a simple CPU
system.cpu = DerivO3CPU()

# Create an L1 instruction and data cache
system.cache_line_size = 64                         # Set the cache line size
system.cpu.icache = L1ICache(args)                      # Create the L1 instr cache
system.cpu.dcache = L1DCache(args)                      # Create the L1 data cache

# Connect the instruction and data caches to the CPU
system.cpu.icache.connectCPU(system.cpu)
system.cpu.dcache.connectCPU(system.cpu)


# Create a memory bus, a coherent crossbar, in this case
system.l2bus = L2XBar()
# Hook the CPU ports up to the l2bus
system.cpu.icache.connectBus(system.l2bus)
system.cpu.dcache.connectBus(system.l2bus)

# Create an L2 cache and connect it to the l2bus
system.l2cache = L2Cache(args)
system.l2cache.connectCPUSideBus(system.l2bus)

# Create a memory bus
system.membus = SystemXBar()
# Connect the L2 cache to the membus
system.l2cache.connectMemSideBus(system.membus)



# create the interrupt controller for the CPU and connect to the membus
system.cpu.createInterruptController()
system.cpu.interrupts[0].pio = system.membus.mem_side_ports
system.cpu.interrupts[0].int_requestor = system.membus.cpu_side_ports
system.cpu.interrupts[0].int_responder = system.membus.mem_side_ports
# Connect the system up to the membus
system.system_port = system.membus.cpu_side_ports



# Adding CPU parameters
system.cpu.numRobs = 1								# No of ROBs	
if (args.bp_type == 'TournamentBP'):
    system.cpu.branchPred = TournamentBP()			# Branch Predictor type
elif (args.bp_type == 'BiModeBP'):
    system.cpu.branchPred = BiModeBP()				# Branch Predictor type
else:
    print("Invalid Branch Predictor Type")
    exit(1)

system.cpu.LQEntries = args.LQEntries							# Size of Load Queue 
system.cpu.SQEntries = args.SQEntries							# Size of Store Queue
system.cpu.numROBEntries = args.ROBEntries						# Size of ROB 
system.cpu.numIQEntries = args.numIQEntries						# Size of Instruction Queue



# Create a DDR3 memory controller
system.mem_ctrl = MemCtrl()
system.mem_ctrl.dram = DDR3_1600_8x8()
system.mem_ctrl.dram.range = system.mem_ranges[0]
system.mem_ctrl.port = system.membus.mem_side_ports

system.workload = SEWorkload.init_compatible(args.binary)


# Create a process for a simple "Hello World" application
process = Process()
process.cmd = [args.binary]
# Set the command
# Set the cpu to use the process as its workload and create thread contexts
system.cpu.workload = process
system.cpu.createThreads()

# set up the root SimObject and start the simulation
root = Root(full_system= False, system=system)

# instantiate all of the objects we've created above
m5.instantiate()
print("Beginning simulation!")
exit_event = m5.simulate()
print('Exiting @ tick %i because %s' % (m5.curTick(), exit_event.getCause()))



