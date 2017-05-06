//
// Created by 高松 on 2017/5/6.
//

#ifndef TINYHTTPD_THREADPOOL_H
#define TINYHTTPD_THREADPOOL_H

#ifdef _cplusplus
extern "C"{
#endif

#include "dbg.h"
#include <pthread.h>
#include <stdint.h>
#include <unistd.h>
#include <stdlib.h>
#define THREAD_NUM 8

typedef struct Y_task_s{
    void (*func) (void *);
    void * arg;
    struct Y_task_s *next;
}Y_task_t;


typedef struct {
    pthread_mutex_t lock;
    pthread_cond_t cond;
    pthread_t  * threads;
    Y_task_t *head;
    int thread_count;
    int queue_size;
    int shutdown;
    int start;
}Y_threadpool_t;

typedef enum{
    Y_tp_invalid = -1,
    Y_tp_lock_fail = -2,
    Y_tp_alread_shutdown = -3,
    Y_tp_cond_broadcast = -4,
    Y_tp_thread_fail = -5,
}Y_threadpool_error_t;

Y_threadpool_t * threadpool_init(int threadnum);
int threadpool_add(Y_threadpool_t * pool , void (*func) (void*), void * arg);
int threadpool_destory(Y_threadpool_t * pool , int graceful);

#ifdef _cplusplus
}
#endif

#endif //TINYHTTPD_THREADPOOL_H
