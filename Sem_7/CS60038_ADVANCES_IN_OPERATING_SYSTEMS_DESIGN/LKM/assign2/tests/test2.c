#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/wait.h>
#include <time.h>
#include <stdlib.h>
#include <errno.h>
#include "../ioctl_utils.h"
#include <sys/ioctl.h>

const char* procfile = "/proc/cs60038_a2_13";

int main() {
    // multi process checks
    srand(16);

    for(int i = 0; i < 7; i++) 
        fork();
    
    sleep(5);
    int fd = open(procfile, O_RDWR);

    int pid = getpid();

    printf("! %d %d (open check)\n", getpid(), errno);
    if(fd > 0) {
        int pqsz = 10;
        // write(fd, &pqsz, 1);
        int error = ioctl(fd, PB2_SET_CAPACITY, &pqsz);
        if(error < 0)
        {
            perror("ERROR XD!");
        }
        int val, pri;
        for(int i = 0; i < 10; i++) {
            val = rand(), pri = rand();
            printf("@ %d %d %d (value)\n", getpid(), val, pri);
            // write(fd, &val, 4);
            ioctl(fd, PB2_INSERT_INT, &val);
            // write(fd, &pri, 4);
            ioctl(fd, PB2_INSERT_PRIO, &pri);
        }
        for(int i = 0; i < 10; i++) {
            // read(fd, &val, 4);
            ioctl(fd, PB2_GET_MIN, &val);
            printf("# %d %d (value)\n", getpid(), val);
        }
    }

    return 0;
}
