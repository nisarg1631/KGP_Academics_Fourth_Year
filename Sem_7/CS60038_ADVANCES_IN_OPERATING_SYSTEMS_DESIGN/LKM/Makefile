obj-m := partb_G13_main.o
partb_G13_main-y := partb_G13.o priority_queue/pq.o

ccflags-y := -I$(src)/priority_queue

all:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(shell pwd) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(shell pwd) clean
