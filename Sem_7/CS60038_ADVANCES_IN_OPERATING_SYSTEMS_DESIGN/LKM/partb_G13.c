#include <linux/init.h>
#include <linux/types.h>
#include <linux/module.h>
#include <linux/mutex.h>
#include <linux/proc_fs.h>
#include <linux/uaccess.h>
#include <linux/delay.h>
#include "priority_queue/pq.h"

#define PROCFS_MAX_SIZE 4
#define MAX_PROCESS_CNT 100
#define WORD_SZ 4
typedef int32_t error_t;

MODULE_LICENSE("GPL");
DEFINE_MUTEX(process_mutex); 
DEFINE_MUTEX(process_count_mutex);

enum process_states {
    PROCFILE_OPEND,
    HEAPSZ_READ,
    VALUE_INS,
    PRIORITY_INS,
    PROCFILE_CLOSE,
};

typedef struct process_struct {
    pid_t pid;
    int writecount;
    enum process_states state;
    priority_queue* pq;
    int prev_key;
}process_struct;

static process_struct processes[MAX_PROCESS_CNT];
static unsigned int process_count = 0;
// Made both of the following local
// static char procfs_buffer[PROCFS_MAX_SIZE];
// static unsigned long procfs_buffer_size = 0;

int get_process_index(pid_t pid_key)
{
    int i;
    for(i=0;i<MAX_PROCESS_CNT;i++)
    {
        if(processes[i].pid == pid_key)
            return i;
    }
    return -1;
}

error_t add_process(pid_t pid_add)
{
    int i;
    int pindex = get_process_index(pid_add);
    // printk(KERN_ALERT "index = %d",pindex);
    if(pindex == -1)
    {
        mutex_lock(&process_mutex);
        for(i=0;i<MAX_PROCESS_CNT;i++)
        {
            if(processes[i].pid==-1)
            {
                processes[i].pid = pid_add;
                processes[i].pq = NULL;
                processes[i].writecount = 0;
                processes[i].state = PROCFILE_OPEND;
                mutex_unlock(&process_mutex);
                return 0;
            }
        }
        mutex_unlock(&process_mutex);
        return -EFAULT; // no space
    }
    else 
    {
        return -EFAULT; // alredy present
    }
}

static error_t procfile_open(struct inode *inode, struct file *file)
{    
    // printk(KERN_ALERT "File Opened by User %d ", process_count);
    mutex_lock(&process_count_mutex);
    if(process_count == MAX_PROCESS_CNT) // max process limit exceeded
    {
        mutex_unlock(&process_count_mutex);
        return -EFAULT;
    }
    process_count++;
    mutex_unlock(&process_count_mutex);
    pid_t curr_pid = current->pid;
    error_t errcode = add_process(curr_pid);
    return errcode;
}

static error_t procfile_close(struct inode *inode, struct file *file)
{
    
    int pindex = get_process_index(current->pid);
    if(pindex ==-1)
        return -EFAULT;
    // printk(KERN_ALERT "File Closed");
    // deallocate resources
    priority_queue_deinit(&processes[pindex].pq);
    mutex_lock(&process_mutex);
    processes[pindex].writecount = 0;
    processes[pindex].state = PROCFILE_CLOSE;
    processes[pindex].pid = -1;
    processes[pindex].pq=NULL;
    mutex_unlock(&process_mutex);
    mutex_lock(&process_count_mutex);
    process_count--;
    mutex_unlock(&process_count_mutex);
    return 0;
}

/*
    filep : file pointer to procfile
    buff : the buffer to be filled by us
    count: bytes requested to be read 
    offp: offset in file
*/
static ssize_t procfile_read(struct file *filep, char *buff, size_t count, loff_t *offp)
{
    if(buff == NULL || count!= WORD_SZ)
    {
        return -EINVAL;
    }
    int pindex = get_process_index(current->pid);
    if(pindex==-1 || processes[pindex].state == PROCFILE_OPEND)
    {
        return -EFAULT;
    }

    int32_t topvalue = pop(processes[pindex].pq);
    // printk(KERN_ALERT "value =  %d ", topvalue);
    if(topvalue==-1)
    {
        return -EACCES;
    }
    // memcpy(procfs_buffer,&topvalue,WORD_SZ);
    // msleep(10000);
    // msleep_interruptible(10000);
    if(copy_to_user(buff,&topvalue,WORD_SZ))
    {
        // printk(KERN_ALERT "unable to copy to user");
        return -ENOBUFS;
    }
    
    return WORD_SZ;
}

static ssize_t procfile_write(struct file *filep, const char *buff, size_t count, loff_t *offp)
{    
    if (count > PROCFS_MAX_SIZE ) 
    {
        return -EINVAL;
    }
    int pindex = get_process_index(current->pid);
    if(pindex==-1)
    {
        return -EFAULT;
    }
    enum process_states curr_state = processes[pindex].state;
    enum process_states next_state;
    
    if(curr_state == PROCFILE_CLOSE) // 2n+1 lines written
    {
        return -EACCES;
    }
    if(count!=1 && count!=WORD_SZ) // invalid write
    {
        return -EINVAL;
    }
    int32_t user_data;
    user_data = 0;
    if (copy_from_user(&user_data, buff, count)) 
    {
        // printk(KERN_ALERT "unable to copy from user");
        return -EFAULT;
    }
    if(count==1) 
    {
        if(curr_state!=PROCFILE_OPEND) // not the first statement
        {
            return -EINVAL;
        }
        // int32_t* pq_sz = (int32_t*)procfs_buffer;
        int32_t* pq_sz = &user_data;
        if(priority_queue_init(&processes[pindex].pq,*pq_sz)<0)
        {
            // printk(KERN_ALERT "unable to open");
            return  -EINVAL;
        }
        next_state = HEAPSZ_READ;
        processes[pindex].writecount++;
    }
    else 
    {
        if(curr_state==PROCFILE_OPEND)  // first statement
        {
            return -EINVAL;
        }
        // int32_t* written_data = (int32_t*)procfs_buffer;
        int32_t* written_data = &user_data;
        if(curr_state==HEAPSZ_READ || curr_state == PRIORITY_INS)
        {
            processes[pindex].prev_key = *written_data;
            next_state = VALUE_INS;
            processes[pindex].writecount++;
        }
        if(curr_state == VALUE_INS)
        {
            push(processes[pindex].pq, processes[pindex].prev_key, *written_data);
            next_state = PRIORITY_INS;
            processes[pindex].writecount++;
        }
    }
    if(processes[pindex].writecount == 2*processes[pindex].pq->max_sz+1)
        next_state = PROCFILE_CLOSE;
    processes[pindex].state = next_state;
    return count;
}

static struct proc_ops proc_file_control = {
    .proc_open = procfile_open,
    .proc_read = procfile_read,
    .proc_release = procfile_close,
    .proc_write = procfile_write,
};

static error_t init_lkm(void)
{
    struct proc_dir_entry *proc_file = proc_create("partb_1_13", 0666, NULL, &proc_file_control);
    if(!proc_file) 
        return -ENOENT;
    // initialise process list
    int i;
    for(i=0;i<MAX_PROCESS_CNT;i++)
    {
        processes[i].pid=-1;
        processes[i].writecount = 0;
        processes[i].state = PROCFILE_OPEND;
        processes[i].pq = NULL;
    }
    // printk(KERN_ALERT "Initialized LKM\n");
    return 0;
}

static void exit_lkm(void)
{
    remove_proc_entry("partb_1_13", NULL);
    // printk(KERN_ALERT "Removed LKM\n");
}

module_init(init_lkm);
module_exit(exit_lkm);
