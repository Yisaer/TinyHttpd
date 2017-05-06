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

};




#endif //TINYHTTPD_HTTP_REQUEST_H
