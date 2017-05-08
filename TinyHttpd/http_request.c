//
// Created by 高松 on 2017/5/6.
//

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include "http_request.h"
#include "error.h"
#include "http.h"

static int Y_http_process_ignore(Y_http_request_t *r , Y_http_out_t * out , char * data,  int len);
static int Y_http_process_connection(Y_http_request_t *r,Y_http_out_t *out , char* data, int len);
static int Y_http_process_if_modified_since(Y_http_request_t *r , Y_http_out_t * out , char * data ,int len);

Y_http_header_handle_t Y_http_headers_in[] = {
        {"Host",Y_http_process_ignore},
        {"Connection",Y_http_process_connection},
        {"If-MOdified_Since",Y_http_process_if_modified_since},
        {"",Y_http_process_ignore}
};
int Y_init_request_t(Y_http_request_t *r ,int fd,int epfd ,Y_conf_t * cf){
    r->fd = fd;
    r->epfd = epfd;
    r->pos = r->last = 0;
    r->state = 0;
    r->request_end = cf->root;
    INIT_LIST_HEAD(&(r->list));
    return Y_OK;
}