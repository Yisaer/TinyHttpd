//
// Created by 高松 on 2017/5/4.
//

#ifndef TINYHTTPD_PRIORITY_QUEUE_H
#define TINYHTTPD_PRIORITY_QUEUE_H

#include "dbg.h"
#include "errno.h"

#define Y_PQ_DEFAULT_SIZE 10

typedef int (*Y_pq_comparator_pt) (void* pi , void* pj);

typedef struct {
    void ** pq;
    size_t nalloc;
    size_t size;
    Y_pq_comparator_pt  comp;
}Y_pq_t;

int Y_pq_init(Y_pq_t *Y_pq,Y_pq_comparator_pt comp, size_t size);
int Y_pq_is_empty(Y_pq_t *Y_pq);
size_t Y_pq_size(Y_pq_t *Y_pq);
void *Y_pq_min(Y_pq_t *Y_pq);
int Y_pq_delmin(Y_pq_t *Y_pq);
int Y_pq_insert(Y_pq_t *Y_pq , void *item);
int Y_pq_sink(Y_pq_t *Y_pq , size_t i );


#endif //TINYHTTPD_PRIORITY_QUEUE_H
