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
    size_t max_sz, curr_sz;
    heap_element* heap;
    int32_t counter;
} priority_queue;

error_t priority_queue_init(priority_queue** h, size_t heap_sz);
error_t push(priority_queue* h, int32_t k, int32_t v);
int32_t pop(priority_queue* h);
void priority_queue_deinit(priority_queue** h);

void heapify(priority_queue* pq, int curr_index);
void swap_ele(priority_queue* pq, int index1, int index2);
int32_t is_less_than(priority_queue* pq, int index1, int index2);
