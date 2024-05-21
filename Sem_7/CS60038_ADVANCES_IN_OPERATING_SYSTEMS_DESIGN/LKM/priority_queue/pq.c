#include "pq.h"

error_t priority_queue_init(priority_queue** pq, size_t heap_sz) {
    if(heap_sz<1 || heap_sz > MAX_HEAP_SZ) {   
        return -1;
    }
    (*pq) = (priority_queue * )vmalloc(sizeof(priority_queue));
    (*pq)->heap = (heap_element *)vmalloc(heap_sz * sizeof(heap_element));
    (*pq)->max_sz = heap_sz;
    (*pq)->curr_sz = 0;
    (*pq)->counter = 0;
    return 0;
}

void swap_ele(priority_queue* pq, int index1, int index2) {
    heap_element temp = pq->heap[index1];
    pq->heap[index1] = pq->heap[index2];
    pq->heap[index2] = temp;
}

int32_t is_less_than(priority_queue* pq, int index1, int index2) {
    heap_element e1 = pq->heap[index1];
    heap_element e2 = pq->heap[index2];
    return (e1.value < e2.value || (e1.value == e2.value && e1.counter < e2.counter));
}

void heapify(priority_queue* pq, int curr_index) {
    if(curr_index >= pq->curr_sz)
        return;
    int left_child_index = curr_index * 2 + 1;
    int right_child_index = curr_index * 2 + 2;
    int smallest = curr_index;
    if(left_child_index < pq->curr_sz && is_less_than(pq, left_child_index, curr_index)) {
        smallest = left_child_index;
    }
    if(right_child_index < pq->curr_sz && is_less_than(pq, right_child_index, smallest)) {
        smallest = right_child_index;
    }
    if(smallest != curr_index) {
        swap_ele(pq, curr_index, smallest);
        heapify(pq, smallest);
    }
}

error_t push(priority_queue* pq, int32_t k, int32_t v) {
    if(pq->curr_sz == pq->max_sz) {
        return -1;
    }
    int curr_index = pq->curr_sz;
    pq->heap[curr_index].key = k;
    pq->heap[curr_index].value = v;
    pq->heap[curr_index].counter = pq->counter++;
    while(curr_index > 0 && is_less_than(pq, curr_index, (curr_index - 1) >> 1)) {
        swap_ele(pq, curr_index, (curr_index - 1) >> 1);
        curr_index = (curr_index - 1) >> 1;
    }
    pq->curr_sz++;
    return 0;
}

int32_t pop(priority_queue* pq) {
    if(pq->curr_sz == 0) {
        return -1;
    }
    int32_t topvalue = pq->heap[0].key;
    swap_ele(pq, 0, pq->curr_sz - 1);
    pq->curr_sz--;
    heapify(pq, 0);
    return topvalue;
}

void priority_queue_deinit(priority_queue** pq) {
    if(pq == NULL || (*pq)==NULL) {
        return;
    }
    vfree((*pq)->heap);
    vfree(*pq);
    (*pq) = NULL;
}
