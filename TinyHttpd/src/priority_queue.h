

#ifndef PRIORITY_QUEUE_H
#define PRIORITY_QUEUE_H

#include "dbg.h"
#include "error.h"

#define PQ_DEFAULT_SIZE 10

typedef int (*pq_comparator_pt)(void *pi, void *pj);

typedef struct {
    void **pq;
    size_t nalloc;
    size_t size;
    pq_comparator_pt comp;
} pq_t;

int pq_init(pq_t *pq, pq_comparator_pt comp, size_t size);
int pq_is_empty(pq_t *pq);
size_t pq_size(pq_t *pq);
void *pq_min(pq_t *pq);
int pq_delmin(pq_t *pq);
int pq_insert(pq_t *pq, void *item);

int pq_sink(pq_t *pq, size_t i);
#endif 
