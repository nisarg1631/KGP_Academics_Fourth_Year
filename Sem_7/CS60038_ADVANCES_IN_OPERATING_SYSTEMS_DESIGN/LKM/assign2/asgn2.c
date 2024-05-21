#include <linux/init.h>
#include <linux/types.h>
#include <linux/module.h>
#include <linux/mutex.h>
#include <linux/proc_fs.h>
#include <linux/uaccess.h>
#include <linux/delay.h>
#include "priority_queue/pq.h"
#include "ioctl_utils.h"

#define PROCFS_MAX_SIZE 4
#define MAX_PROCESS_CNT 100
#define WORD_SZ 4
typedef int32_t error_t;

MODULE_LICENSE("GPL");
DEFINE_MUTEX(process_mutex);
DEFINE_MUTEX(process_count_mutex);

enum process_states
{
    PROCFILE_INIT,
    PROCFILE_INSERT_INT,
    PROCFILE_INSERT_PRIO,
    PROCFILE_CLOSE
};

typedef struct process_struct
{
    pid_t pid;
    // int writecount; # deprecated
    enum process_states state;
    priority_queue *pq;
    int prev_key;
} process_struct;

static process_struct processes[MAX_PROCESS_CNT];
static unsigned int process_count = 0;
// Made both of the following local
// static char procfs_buffer[PROCFS_MAX_SIZE];
// static unsigned long procfs_buffer_size = 0;

int get_process_index(pid_t pid_key)
{
    int i;
    for (i = 0; i < MAX_PROCESS_CNT; i++)
    {
        if (processes[i].pid == pid_key)
            return i;
    }
    return -1;
}

error_t add_process(pid_t pid_add)
{
    int i;
    int pindex = get_process_index(pid_add);
    // printk(KERN_ALERT "index = %d",pindex);
    if (pindex == -1)
    {
        mutex_lock(&process_mutex);
        for (i = 0; i < MAX_PROCESS_CNT; i++)
        {
            if (processes[i].pid == -1)
            {
                processes[i].pid = pid_add;
                processes[i].pq = NULL;
                // processes[i].writecount = 0;
                processes[i].state = PROCFILE_INIT;
                mutex_unlock(&process_mutex);
                return 0;
            }
        }
        mutex_unlock(&process_mutex);
        return -EPERM; // no space
    }
    else
    {
        return -EPERM; // alredy present
    }
}

static error_t set_capacity(int *capacity)
{
    if (capacity == NULL)
    {
        return -EINVAL;
    }
    int cap = 0;
    printk("SET CAP %d\n", cap);
    if (copy_from_user(&cap, capacity, 4))
    {
        return -EINVAL;
    }
    printk("SET CAP %d\n", cap);
    if (cap < 1 || cap > 100)
    {
        return -EINVAL;
    }
    printk("SET CAP Done1");
    int pindex = get_process_index(current->pid);
    printk("SET CAP Done2");
    // processes[pindex].writecount = 0;
    processes[pindex].state = PROCFILE_INSERT_INT;
    printk("SET CAP Done3");
    priority_queue_deinit(&processes[pindex].pq);
    printk("SET CAP Done4");
    priority_queue_init(&processes[pindex].pq, cap);
    printk("SET CAP Done5");
    return 0;
}

static error_t insert_int(int *value)
{
    int pindex = get_process_index(current->pid);
    if (processes[pindex].state != PROCFILE_INSERT_INT)
    {
        return -EACCES;
    }
    if (value == NULL)
    {
        return -EINVAL;
    }
    int val = 0;
    if (copy_from_user(&val, value, 4))
    {
        return -EINVAL;
    }
    processes[pindex].prev_key = val;
    processes[pindex].state = PROCFILE_INSERT_PRIO;
    return 0;
}

static error_t insert_prio(int *key)
{
    int pindex = get_process_index(current->pid);
    if (processes[pindex].state != PROCFILE_INSERT_PRIO)
    {
        return -EACCES;
    }
    if (key == NULL)
    {
        return -EINVAL;
    }
    int k = 0;
    if (copy_from_user(&k, key, 4))
    {
        return -EINVAL;
    }
    int error = push(processes[pindex].pq, processes[pindex].prev_key, k);
    if (error == 0)
        processes[pindex].state = PROCFILE_INSERT_INT;
    return error;
}

static error_t get_info(struct obj_info *info)
{
    if (info == NULL)
    {
        return -1;
    }
    int pindex = get_process_index(current->pid);
    struct obj_info oi;
    oi.capacity = processes[pindex].pq->max_sz;
    oi.prio_que_size = processes[pindex].pq->curr_sz;
    if (copy_to_user(info, &oi, sizeof(struct obj_info)))
    {
        return -1;
    }
    return 0;
}

static error_t get_min(int *value)
{
    if (value == NULL)
    {
        return -1;
    }
    int pindex = get_process_index(current->pid);
    int val = 0;
    int error = pop(processes[pindex].pq, &val);
    if (copy_to_user(value, &val, 4))
    {
        return -1;
    }
    return error;
}

static error_t get_max(int *value)
{
    if (value == NULL)
    {
        return -1;
    }
    int pindex = get_process_index(current->pid);
    int val = 0;
    int error = pop_max(processes[pindex].pq, &val);
    if (copy_to_user(value, &val, 4))
    {
        return -1;
    }
    return error;
}

static long procfile_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
    switch (cmd)
    {
    case PB2_SET_CAPACITY:
        return set_capacity(arg);
    case PB2_INSERT_INT:
        return insert_int(arg);
    case PB2_INSERT_PRIO:
        return insert_prio(arg);
    case PB2_GET_INFO:
        return get_info(arg);
    case PB2_GET_MIN:
        return get_min(arg);
    case PB2_GET_MAX:
        return get_max(arg);
    default:
        return 0;
    }
}

static error_t procfile_open(struct inode *inode, struct file *file)
{
    mutex_lock(&process_count_mutex);
    if (process_count == MAX_PROCESS_CNT) // max process limit exceeded
    {
        mutex_unlock(&process_count_mutex);
        return -EFAULT;
    }
    process_count++;
    mutex_unlock(&process_count_mutex);
    pid_t curr_pid = current->pid;
    error_t errcode = add_process(curr_pid);
    // printk("File Opened by User %d ", curr_pid);
    return errcode;
}

static error_t procfile_close(struct inode *inode, struct file *file)
{

    int pindex = get_process_index(current->pid);
    if (pindex == -1)
        return -EFAULT;
    // deallocate resources
    priority_queue_deinit(&processes[pindex].pq);
    mutex_lock(&process_mutex);
    // processes[pindex].writecount = 0;
    processes[pindex].state = PROCFILE_CLOSE;
    processes[pindex].pid = -1;
    processes[pindex].pq = NULL;
    mutex_unlock(&process_mutex);
    mutex_lock(&process_count_mutex);
    process_count--;
    mutex_unlock(&process_count_mutex);
    // printk("File Closed by User %d", current->pid);
    return 0;
}

/*
    filep : file pointer to procfile
    buff : the buffer to be filled by us
    count: bytes requested to be read
    offp: offset in file
*/
// static ssize_t procfile_read(struct file *filep, char *buff, size_t count, loff_t *offp)
// {
//     if(buff == NULL || count!= WORD_SZ)
//     {
//         return -EINVAL;
//     }
//     int pindex = get_process_index(current->pid);
//     if(pindex==-1 || processes[pindex].state == PROCFILE_OPEND)
//     {
//         return -EFAULT;
//     }

//     int32_t topvalue = pop(processes[pindex].pq);
//     // printk(KERN_ALERT "value =  %d ", topvalue);
//     if(topvalue==-1)
//     {
//         return -EACCES;
//     }
//     // memcpy(procfs_buffer,&topvalue,WORD_SZ);
//     // msleep(10000);
//     // msleep_interruptible(10000);
//     if(copy_to_user(buff,&topvalue,WORD_SZ))
//     {
//         // printk(KERN_ALERT "unable to copy to user");
//         return -ENOBUFS;
//     }

//     return WORD_SZ;
// }

// static ssize_t procfile_write(struct file *filep, const char *buff, size_t count, loff_t *offp)
// {
//     if (count > PROCFS_MAX_SIZE )
//     {
//         return -EINVAL;
//     }
//     int pindex = get_process_index(current->pid);
//     if(pindex==-1)
//     {
//         return -EFAULT;
//     }
//     enum process_states curr_state = processes[pindex].state;
//     enum process_states next_state;

//     if(curr_state == PROCFILE_CLOSE) // 2n+1 lines written
//     {
//         return -EACCES;
//     }
//     if(count!=1 && count!=WORD_SZ) // invalid write
//     {
//         return -EINVAL;
//     }
//     int32_t user_data;
//     user_data = 0;
//     if (copy_from_user(&user_data, buff, count))
//     {
//         // printk(KERN_ALERT "unable to copy from user");
//         return -EFAULT;
//     }
//     if(count==1)
//     {
//         if(curr_state!=PROCFILE_OPEND) // not the first statement
//         {
//             return -EINVAL;
//         }
//         // int32_t* pq_sz = (int32_t*)procfs_buffer;
//         int32_t* pq_sz = &user_data;
//         if(priority_queue_init(&processes[pindex].pq,*pq_sz)<0)
//         {
//             // printk(KERN_ALERT "unable to open");
//             return  -EINVAL;
//         }
//         next_state = HEAPSZ_READ;
//         processes[pindex].writecount++;
//     }
//     else
//     {
//         if(curr_state==PROCFILE_OPEND)  // first statement
//         {
//             return -EINVAL;
//         }
//         // int32_t* written_data = (int32_t*)procfs_buffer;
//         int32_t* written_data = &user_data;
//         if(curr_state==HEAPSZ_READ || curr_state == PRIORITY_INS)
//         {
//             processes[pindex].prev_key = *written_data;
//             next_state = VALUE_INS;
//             processes[pindex].writecount++;
//         }
//         if(curr_state == VALUE_INS)
//         {
//             push(processes[pindex].pq, processes[pindex].prev_key, *written_data);
//             next_state = PRIORITY_INS;
//             processes[pindex].writecount++;
//         }
//     }
//     if(processes[pindex].writecount == 2*processes[pindex].pq->max_sz+1)
//         next_state = PROCFILE_CLOSE;
//     processes[pindex].state = next_state;
//     return count;
// }

static struct proc_ops proc_file_control = {
    .proc_ioctl = procfile_ioctl,
    .proc_open = procfile_open,
    .proc_release = procfile_close,
};

static error_t init_lkm(void)
{
    struct proc_dir_entry *proc_file = proc_create("cs60038_a2_13", 0666, NULL, &proc_file_control);
    if (!proc_file)
        return -ENOENT;
    // initialise process list
    int i;
    for (i = 0; i < MAX_PROCESS_CNT; i++)
    {
        processes[i].pid = -1;
        // processes[i].writecount = 0;
        processes[i].state = PROCFILE_INIT;
        processes[i].pq = NULL;
    }
    printk(KERN_ALERT "Initialized LKM\n");
    return 0;
}

static void exit_lkm(void)
{
    remove_proc_entry("cs60038_a2_13", NULL);
    printk(KERN_ALERT "Removed LKM\n");
}

module_init(init_lkm);
module_exit(exit_lkm);
