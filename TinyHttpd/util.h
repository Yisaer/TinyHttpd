//
// Created by 高松 on 2017/5/4.
//

#ifndef TINYHTTPD_UTIL_H
#define TINYHTTPD_UTIL_H

//max number of listen queue
#define LISTENQ 1024

#define BUFLEN 8192

#define DELIM "="

#define Y_CONF_OK 0
#define Y_CONF_ERROR 100

#define MIN(a,b) ( (a)<(b)?(a):(b))


struct Y_conf_s{
    void * root;
    int port;
    int thread_num;
};

typedef struct Y_conf_s Y_conf_t;

int open_listenfd(int port);
int make_socket_non_blocking(int fd);
int read_conf(char * filename ,Y_conf_t *cf , char* buf, int len);

#endif //TINYHTTPD_UTIL_H
