#include <linux/types.h>
#include <linux/ioctl.h>

#define PB2_SET_CAPACITY _IOW(0x10, 0x31, int32_t*)
#define PB2_INSERT_INT _IOW(0x10, 0x32, int32_t*)
#define PB2_INSERT_PRIO _IOW(0x10, 0x33, int32_t*)
#define PB2_GET_INFO _IOR(0x10, 0x34, int32_t*)
#define PB2_GET_MIN _IOR(0x10, 0x35, int32_t*)
#define PB2_GET_MAX _IOR(0x10, 0x36, int32_t*)

struct obj_info {
    // current number of elements in priority-queue
    int32_t prio_que_size;
    // maximum capacity of priority-queue
    int32_t capacity;
};
