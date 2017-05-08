//
// Created by 高松 on 2017/5/6.
//

#ifndef TINYHTTPD_HTTP_REQUEST_H
#define TINYHTTPD_HTTP_REQUEST_H

#include <time.h>
#include "http.h"

#define Y_AGAIM EAGAIN
#define Y_HTTP_PARSE_INVALID_METHOD 10
#define Y_HTTP_PARSE_INVALID_REQUEST 11
#define Y_HTTP_PARSE_INVALID_HEADER 12

#define Y_HTTP_UNKNOWN      0x0001
#define Y_HTTP_GET          0x0002
#define Y_HTTP_HEAD         0x0004
#define Y_HTTP_POST         0x0008

#define Y_HTTP_OK           200
#define Y_HTTP_NOT_MODIFIED 304
#define Y_HTTP_NOT_FOUND    404
#define MAX_BUF             8124

typedef struct Y_http_request_s{
    void * root;
    int fd;
    int epfd;
    char buf[MAX_BUF];
    size_t pos,last;
    int state ;
    void * request_start;
    void * method_end;
    int method;
    void * uri_start;
    void * uri_end;
    void * path_start;
    void * query_start;
    void * query_end;
    int http_major;
    int http_minor;
    void * request_end;
    struct list_head list;
    void * cur_header_key_start;
    void * cur_header_key_end;
    void * cur_header_value_start;
    void * cur_header_value_end;
    void * timer;
}Y_http_request_t;

typedef struct{
    int fd;
    int keep_alive;
    time_t mtime;   // the modified time of the file
    int modified;   // Decide whether file is modified
    int status;
}Y_http_out_t;

typedef struct Y_http_header_s{
    void * key_start,*key_end;
    void * value_start, *value_end;
    list_head list;
}Y_http_header_t;

typedef int(*Y_http_header_handler_pt) (Y_http_request_t *r , Y_http_out_t *o , char *data,int len);
typedef struct{
    char * name;
    Y_http_header_handler_pt  handler;
}Y_http_header_handle_t;


void Y_http_handle_header(Y_http_request_t *r, Y_http_out_t *o);
int Y_http_close_conn(Y_http_request_t *r);

int Y_init_request_t(Y_http_request_t *r, int fd, int epfd, Y_conf_t *cf);
int Y_free_request_t(Y_http_request_t *r);

int Y_init_out_t(Y_http_out_t *o, int fd);
int Y_free_out_t(Y_http_out_t *o);

const char *get_shortmsg_from_status_code(int status_code);

extern Y_http_header_handle_t     Y_http_headers_in[];



#endif //TINYHTTPD_HTTP_REQUEST_H
