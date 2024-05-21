obj-m := asgn2_main.o
asgn2_main-y := asgn2.o priority_queue/pq.o

ccflags-y := -I$(src)/priority_queue

all:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(shell pwd) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(shell pwd) clean
