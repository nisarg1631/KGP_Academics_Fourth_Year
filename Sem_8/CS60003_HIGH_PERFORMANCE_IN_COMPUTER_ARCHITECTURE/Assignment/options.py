"""
• LQEntries: 32, 64
• SQEntries: 32, 64
• l1d_size: 32kB, 64kB
• l1i_size: 8kB, 16kB
• l2_size: 256kB, 512kB
• bp_type: TournamentBP, BiModeBP
• ROBEntries: 128, 192
• numIQEntries: 16, 64

"""

# write code to run the command ./build/X86/gem5.opt run.py by varying the parameters as commented above to have 256 different runs.


import os
import subprocess
import sys
import argparse
import multiprocessing


params = {
    'LQEntries': [32, 64],
    'SQEntries': [32, 64],
    'l1d_size': ['32kB', '64kB'],
    'l1i_size': ['8kB', '16kB'],
    'l2_size': ['256kB', '512kB'],
    'bp_type': ['TournamentBP', 'BiModeBP'],
    'ROBEntries': [128, 192],
    'numIQEntries': [16, 64]
}
result_dir = 'results'
# check if result dir is their or not
if not os.path.exists(result_dir):
    os.mkdir(result_dir)

binary = 'queens.out'

def run_gem5(idx):
    outdir = os.path.join(result_dir, str(idx))
    command = './build/X86/gem5.opt --outdir={} run.py --binary '.format(outdir) + binary
    num_params = len(params)

    # LQEntries is MSB and numIQEntries is LSB
    count = 1 << (num_params - 1)
    init_idx = idx
    for param in params:
        command += ' --' + param + ' ' + str(params[param][(idx & count) > 0])
        idx %= count
        count >>= 1
    print(command)
    process = subprocess.call(command,stdout=subprocess.PIPE, shell=True)
    print("Done: ", init_idx)

def main():
    num_runs = 64
    # do multiprocessing here
    pool = multiprocessing.Pool(processes=6)
    pool.map(run_gem5, range(num_runs))
    pool.close()
    pool.join()

if __name__ == '__main__':
    main()