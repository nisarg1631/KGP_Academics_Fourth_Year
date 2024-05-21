#include <bits/stdc++.h>

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
    heap_element *heap;
    int32_t counter;
} priority_queue;

error_t priority_queue_init(priority_queue **, int32_t);
error_t push(priority_queue *, int32_t, int32_t);
error_t pop(priority_queue *, int32_t *);
error_t pop_max(priority_queue *, int32_t *);
void priority_queue_deinit(priority_queue **);

void heapify(priority_queue *, int);
void swap_ele(priority_queue *, int, int);
int32_t is_less_than(priority_queue *, int, int);

int main()
{
    priority_queue *pq;
    priority_queue_init(&pq, 100);
    std::map<int, int> m;
    while(1) {
        int op = rand() % 2;
        int cnt = (rand() % 10) + 1;
        if(op) {
            while(cnt-- && pq->curr_sz) {
                int subop = rand() % 2;
                int ret1, ret2;
                if(subop) {
                    ret1 = m.begin()->second;
                    m.erase(m.begin());
                    pop(pq, &ret2);
                    if(ret1 != ret2) {
                        std::cout << "errror 1" << std::endl;
                        exit(0); 
                    }
                    std::cout << "popped min" << std::endl;
                } else {
                    ret1 = m.rbegin()->second;
                    m.erase(std::prev(m.end()));
                    pop_max(pq, &ret2);
                    if(ret1 != ret2) {
                        std::cout << "errror 2" << std::endl;
                        exit(0); 
                    }
                    std::cout << "popped max" << std::endl;
                }
            }
        } else {
            while(cnt--) {
                if(pq->curr_sz < pq->max_sz) {
                    int key = rand();
                    int val = rand();
                    if(m.count(val) == 0) {
                        push(pq, key, val);
                        m[val] = key;
                    }
                    std::cout << "pushed" << std::endl;
                }
            }
        }
    }
    return 0;
}

error_t priority_queue_init(priority_queue **pq, int32_t heap_sz)
{
    if (heap_sz < 1 || heap_sz > MAX_HEAP_SZ)
    {
        return -1;
    }
    (*pq) = (priority_queue *)malloc(sizeof(priority_queue));
    (*pq)->heap = (heap_element *)malloc(heap_sz * sizeof(heap_element));
    (*pq)->max_sz = heap_sz;
    (*pq)->curr_sz = 0;
    (*pq)->counter = 0;
    return 0;
}

void swap_ele(priority_queue *pq, int index1, int index2)
{
    heap_element temp = pq->heap[index1];
    pq->heap[index1] = pq->heap[index2];
    pq->heap[index2] = temp;
}

int32_t is_less_than(priority_queue *pq, int index1, int index2)
{
    heap_element e1 = pq->heap[index1];
    heap_element e2 = pq->heap[index2];
    return (e1.value < e2.value || (e1.value == e2.value && e1.counter < e2.counter));
}

void heapify(priority_queue *pq, int curr_index)
{
    if (curr_index >= pq->curr_sz)
        return;
    int left_child_index = curr_index * 2 + 1;
    int right_child_index = curr_index * 2 + 2;
    int smallest = curr_index;
    if (left_child_index < pq->curr_sz && is_less_than(pq, left_child_index, curr_index))
    {
        smallest = left_child_index;
    }
    if (right_child_index < pq->curr_sz && is_less_than(pq, right_child_index, smallest))
    {
        smallest = right_child_index;
    }
    if (smallest != curr_index)
    {
        swap_ele(pq, curr_index, smallest);
        heapify(pq, smallest);
    }
}

error_t push(priority_queue *pq, int32_t k, int32_t v)
{
    if (pq->curr_sz == pq->max_sz)
    {
        return -EACCES;
    }
    int curr_index = pq->curr_sz;
    pq->heap[curr_index].key = k;
    pq->heap[curr_index].value = v;
    pq->heap[curr_index].counter = pq->counter++;
    while (curr_index > 0 && is_less_than(pq, curr_index, (curr_index - 1) >> 1))
    {
        swap_ele(pq, curr_index, (curr_index - 1) >> 1);
        curr_index = (curr_index - 1) >> 1;
    }
    pq->curr_sz++;
    return 0;
}

error_t pop(priority_queue *pq, int32_t *ret)
{
    if (pq->curr_sz == 0)
    {
        return -1;
    }
    int32_t topvalue = pq->heap[0].key;
    swap_ele(pq, 0, pq->curr_sz - 1);
    pq->curr_sz--;
    heapify(pq, 0);
    *ret = topvalue;
    return 0;
}

error_t pop_max(priority_queue *pq, int32_t *ret)
{
    if (pq->curr_sz == 0)
    {
        return -1;
    }
    int leaf = ((pq->curr_sz - 2) >> 1) + 1;
    int largest = leaf;
    while (++leaf < pq->curr_sz)
    {
        if (is_less_than(pq, largest, leaf))
            largest = leaf;
    }
    *ret = pq->heap[largest].key;
    swap_ele(pq, largest, pq->curr_sz - 1);
    pq->curr_sz--;
    if (largest < pq->curr_sz)
    {
        int curr_index = largest;
        while (curr_index > 0 && is_less_than(pq, curr_index, (curr_index - 1) >> 1))
        {
            swap_ele(pq, curr_index, (curr_index - 1) >> 1);
            curr_index = (curr_index - 1) >> 1;
        }
    }
    return 0;
}

void priority_queue_deinit(priority_queue **pq)
{
    if (pq == NULL || (*pq) == NULL)
    {
        return;
    }
    free((*pq)->heap);
    free(*pq);
    (*pq) = NULL;
}
