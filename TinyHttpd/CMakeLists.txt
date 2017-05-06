cmake_minimum_required(VERSION 3.7)
project(TinyHttpd)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES main.c Rio.c Rio.h dbg.h error.h util.c util.h priority_queue.c priority_queue.h threadpool.c threadpool.h http.c http.h list.h http_request.c http_request.h epoll.c epoll.h)
add_executable(TinyHttpd ${SOURCE_FILES})