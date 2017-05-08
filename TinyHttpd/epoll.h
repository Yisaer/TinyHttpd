//
// Created by 高松 on 2017/5/6.
//

#ifndef TINYHTTPD_EPOLL_H
#define TINYHTTPD_EPOLL_H

//#include <sys/epoll.h>

#define MAXEVENTS 1024

int Y_epoll_create(int flags);
void Y_epoll_add(int epfd,int fs,struct epoll_event * event);
void Y_epoll_mod(int epfd,int fs,struct epoll_event * event);
void Y_epoll_del(int epfd,int fs,struct epoll_event * event);
int Y_epoll_wait(int epfd ,struct epoll_event *events ,int maxevents ,int timeout);


#endif //TINYHTTPD_EPOLL_H
