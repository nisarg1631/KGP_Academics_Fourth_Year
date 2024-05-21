#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/wait.h>
#include <time.h>
#include <stdlib.h>
#include <errno.h>

const char* procfile = "/proc/partb_1_13";

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
        write(fd, &pqsz, 1);
        int val, pri;
        for(int i = 0; i < 10; i++) {
            val = rand(), pri = rand();
            printf("@ %d %d %d (value)\n", getpid(), val, pri);
            write(fd, &val, 4);
            write(fd, &pri, 4);
        }
        for(int i = 0; i < 10; i++) {
            read(fd, &val, 4);
            printf("# %d %d (value)\n", getpid(), val);
        }
    }

    return 0;
}
