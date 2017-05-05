//
// Created by 高松 on 2017/5/4.
//

#include "priority_queue.h"
#include "error.h"

int Y_pq_init(Y_pq_t * Y_pq,Y_pq_comparator_pt comp , size_t size){
    Y_pq->pq = (void **) malloc(sizeof(void*) * (size+1));
    if(!Y_pq->pq){
        log_err("Y_pq_init: malloc failed");
        return -1;
    }
    Y_pq->nalloc = 0;
    Y_pq->size = size+1;
    Y_pq->comp = comp;
    return Y_OK;
}

int Y_pq_is_empty(Y_pq_t *Y_pq){
    return (Y_pq->nalloc == 0 )?1:0;
}
size_t Y_pq_size(Y_pq_t *Y_pq){
    return Y_pq->nalloc;
}

void * Y_pq_min(Y_pq_t * Y_pq){
    if(Y_pq_is_empty(Y_pq)){
        return NULL;
    }
    return Y_pq->pq[1];
}



static int resize(Y_pq_t * Y_pq,size_t new_size){
    if(new_size <= Y_pq->nalloc){
        log_err("resize : new_size to small");
        return -1;
    }
    void ** new_ptr = (void**) malloc(sizeof(void*) *new_size);
    if(!new_ptr){
        log_err("resize: malloc failed");
        return -1;
    }
    memcpy(new_ptr,Y_pq->pq,sizeof(void *) * (Y_pq->nalloc+1));
    free(Y_pq->pq);
    Y_pq->pq = new_ptr;
    Y_pq->size = new_size;
    return Y_OK;
}

static void exch(Y_pq_t * Y_pq , size_t i ,size_t j){
    void * tmp = Y_pq->pq[i];
    Y_pq->pq[i] = Y_pq->pq[j];
    Y_pq->pq[j] = tmp;
}

static void swim(Y_pq_t * Y_pq , size_t k){
    while(k > 1 && Y_pq->comp(Y_pq->pq[k],Y_pq->pq[k/2])){
        exch(Y_pq,k,k/2);
        k/=2;
    }
}

static size_t sink (Y_pq_t * Y_pq , size_t k){
    size_t j;
    size_t nalloc = Y_pq->nalloc;

    while( 2*k <= nalloc){
        j = 2*k;
        if( j < nalloc && Y_pq->comp(Y_pq->pq[j+1],Y_pq->pq[j])) j++;
        if( !Y_pq->comp(Y_pq->pq[j],Y_pq->pq[k])) break;
        exch(Y_pq,j,k);
        k = j;
    }
    return k;
}

int Y_pq_delmin(Y_pq_t * Y_pq){
    if(Y_pq_is_empty(Y_pq)){
        return Y_OK;
    }
    exch(Y_pq,1,Y_pq->nalloc);
    Y_pq->nalloc--;
    sink(Y_pq,1);
    if( Y_pq->nalloc >0 && Y_pq->nalloc <= (Y_pq->size-1)/4){
        if(resize(Y_pq,Y_pq->size/2)<0){
            return -1;
        }
    }
    return Y_OK;
}

int Y_pq_insert(Y_pq_t * Y_pq , void * item){
    if(Y_pq->nalloc +1 == Y_pq->size){
        if( resize(Y_pq,Y_pq->size*2)<0){
            return -1;
        }
    }
    Y_pq->pq[++Y_pq->nalloc] = item;
    swim(Y_pq,Y_pq->nalloc);
    return Y_OK;
}

int Y_pq_sink(Y_pq_t * Y_pq ,size_t i){
    return sink(Y_pq,i);
}

