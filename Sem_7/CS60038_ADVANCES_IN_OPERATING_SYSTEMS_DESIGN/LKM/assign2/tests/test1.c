#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include "../ioctl_utils.h"
#include <sys/ioctl.h>

void check_for_error(int error) {
    if(error < 0)
        perror("TEST PASSED!");
    else
        printf("TEST FAILED!\n");
}

int main()
{
    char* procfile = "/proc/cs60038_a2_13";
    int error;

    int fd = open(procfile, O_RDWR);
    if(fd < 0) {
	    perror("Open Error");
	    return 0;
	}
    printf("FILE OPENED!\n");
    int pqsz = 10;
    int ret = ioctl(fd, PB2_SET_CAPACITY, &pqsz);
    printf("%d ---\n", pqsz);
    printf("%d --\n", ret);

    struct obj_info oi;
    ret = ioctl(fd, PB2_GET_INFO, &oi);
    printf("%d ---\n", oi.capacity);
    printf("%d ---\n", oi.prio_que_size);
    printf("%d --\n", ret);

    ret = ioctl(fd, PB2_INSERT_INT, &pqsz);
    printf("%d ##\n", ret);
    ret = ioctl(fd, PB2_GET_INFO, &oi);
    printf("%d ---\n", oi.capacity);
    printf("%d ---\n", oi.prio_que_size);
    printf("%d --\n", ret);

    ret = ioctl(fd, PB2_INSERT_PRIO, &pqsz);
    printf("%d ##\n", ret);
    ret = ioctl(fd, PB2_GET_INFO, &oi);
    printf("%d ---\n", oi.capacity);
    printf("%d ---\n", oi.prio_que_size);
    printf("%d --\n", ret);

    pqsz = 9;

    ret = ioctl(fd, PB2_INSERT_INT, &pqsz);
    printf("%d ##\n", ret);
    ret = ioctl(fd, PB2_GET_INFO, &oi);
    printf("%d ---\n", oi.capacity);
    printf("%d ---\n", oi.prio_que_size);
    printf("%d --\n", ret);

    ret = ioctl(fd, PB2_INSERT_PRIO, &pqsz);
    printf("%d ##\n", ret);
    ret = ioctl(fd, PB2_GET_INFO, &oi);
    printf("%d ---\n", oi.capacity);
    printf("%d ---\n", oi.prio_que_size);
    printf("%d --\n", ret);

    ret = ioctl(fd, PB2_GET_MIN, &pqsz);
    printf("%d ##\n", pqsz);
    ret = ioctl(fd, PB2_GET_MIN, &pqsz);
    printf("%d ##\n", pqsz);
    // sleep(5);
    // close(fd);
    
    // // Try to open again

    // check_for_error(open(procfile, O_RDWR));

    // // Write invalid number of bytes for size
    // int sz = 2;
    // check_for_error(write(fd, &sz, 2));

    // // Write out of bound value < 1 or > 100 for size
    // sz = 0;
    // check_for_error(write(fd, &sz, 1));
    // sz = -1;
    // check_for_error(write(fd, &sz, 1));
    // sz = 101;
    // check_for_error(write(fd, &sz, 1));
    // sz = 2;
    // write(fd, &sz, 1);

    // // Write invalid number of bytes for value
    // int val = 1;
    // check_for_error(write(fd, &val, 3));
    // check_for_error(write(fd, &val, 5));
    // write(fd, &val, 4);

    // // Write invalid number of bytes for key
    // int key = 1;
    // check_for_error(write(fd, &key, 3));
    // check_for_error(write(fd, &key, 5));
    // write(fd, &key, 4);

    // // Close twice
    // close(fd);
    // check_for_error(close(fd));

    // // Open again
    // fd = open(procfile, O_RDWR);
    // if(fd < 0) {
	//     perror("Open Error");
	//     return 0;
	// }
    // printf("FILE OPENED AGAIN!\n");

    // // Read on empty queue
    // check_for_error(read(fd, &val, 4));
    // sz = 2;
    // write(fd, &sz, 1);
    // check_for_error(read(fd, &val, 4));

    // // Read between writing a value and a key (should work)
    // write(fd, &val, 4);
    // write(fd, &key, 4);

    // val = 2;
    // key = 2;

    // write(fd, &val, 4);
    // read(fd, &val, 4);
    // if(val == 1)
    //     printf("TEST PASSED: %d\n", val);
    // else
    //     printf("TEST FAILED!\n");
    // write(fd, &key, 4);

    // // Read invalid size
    // check_for_error(read(fd, &val, 3));
    // check_for_error(read(fd, &val, 5));
    // read(fd, &val, 4);
    // if(val == 2)
    //     printf("TEST PASSED: %d\n", val);
    // else
    //     printf("TEST FAILED!\n");
    
    // // Total ops more than 2 * n + 1
    // check_for_error(write(fd, &val, 4));
    // check_for_error(write(fd, &key, 4));
    // check_for_error(read(fd, &val, 4));

    return 0;
}
