//
// Created by 高松 on 2017/5/6.
//

#include "epoll.h"
#include "dbg.h"

struct epoll_event * events;

int Y_epool_create(int flags){
    int fd = epoll_create1(flags);
    check(fd > 0 ,"Y_epoll_create : epoll_create1");
    
}
