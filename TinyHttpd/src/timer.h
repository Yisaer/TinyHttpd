

#ifndef TIMER_H
#define TIMER_H

#include "priority_queue.h"
#include "http_request.h"

#define TIMER_INFINITE -1
#define TIMEOUT_DEFAULT 500     /* ms */

typedef int (*timer_handler_pt)(http_request_t *rq);

typedef struct timer_node_s{
    size_t key;
    int deleted;    /* if remote client close the socket first, set deleted to 1 */
    timer_handler_pt handler;
    http_request_t *rq;
} timer_node;

int timer_init();
int find_timer();
void handle_expire_timers();

extern pq_t timer;
extern size_t current_msec;

void add_timer(http_request_t *rq, size_t timeout, timer_handler_pt handler);
void del_timer(http_request_t *rq);

#endif
