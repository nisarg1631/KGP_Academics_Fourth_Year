#include <linux/vmalloc.h>
#include <linux/types.h>

#define error_t int32_t
#define MAX_HEAP_SZ 100

typedef struct heap_element
{
    int32_t key, value, counter;        
} heap_element;

typedef struct priority_queue 
{
    int32_t curr_sz;
    int32_t max_sz;
    heap_element* heap;
    int32_t counter;
} priority_queue;

error_t priority_queue_init(priority_queue**, int32_t);
error_t push(priority_queue*, int32_t, int32_t);
error_t pop(priority_queue*, int32_t*);
error_t pop_max(priority_queue*, int32_t*);
void priority_queue_deinit(priority_queue**);

void heapify(priority_queue*, int);
void swap_ele(priority_queue*, int, int);
int32_t is_less_than(priority_queue*, int, int);
