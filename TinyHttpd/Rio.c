//
// Created by 高松 on 2017/5/4.
//
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include "dbg.h"
#include "Rio.h"

/*
 *  rio_readn - robustly read n bytes (unbuffered)
 */

ssize_t  rio_readn(int fd,void *usrbuf,size_t n){
    size_t nleft = n;
    ssize_t nread;
    char * bufp = (char*) usrbuf;

    while(nleft>0){
        if( (nread = read(fd,bufp,nleft))<0){
//            interrupted by sig handler return
            if(errno == EINTR){
                nread = 0;
//                call read() again()
            }
            else{
                return -1;
            }
        }else if(nread == 0 ){
            break; // EOF
        }
        nleft -=nread;
        bufp+=nread;
    }
    return (n-nleft);
}


/*
 * rio_writen - robustly wirte n bytes (unbuffered)
 */
ssize_t rio_writen(int fd,void *usrbuf, size_t n){
    size_t nleft = n;
    ssize_t nwritten ;
    char * bufp = (char*) usrbuf;
    while(nleft >0){
        if( (nwritten = write(fd,bufp,nleft))<=0){
            if(errno == EINTR ){
                nwritten = 0;
            }
            else{
                log_err("errno == %d\n",errno);
                return -1;
            }
        }
        nleft -= nwritten;
        bufp += nwritten;
    }
    return n ;
}
/*
 * rio_readinitb - Associate a  descriptor with  a read and reset buffer
 */
void rio_readinitb(rio_t *rp ,int fd){
    rp->rio_fd = fd;
    rp->rio_cnt = 0;
    rp->rio_bufptr = rp->rio_buf;
}

static ssize_t rio_read (rio_t * rp,char  *usrbuf,size_t n ){
    size_t cnt ;
    while( rp->rio_cnt <= 0){ // refill if buf is empty
        rp->rio_cnt = read(rp->rio_fd,rp->rio_buf,sizeof(rp->rio_buf));
        if(rp->rio_cnt <0){
            if(errno == EAGAIN){
//                we have read all the data
                return -EAGAIN;
            }
            if(errno != EINTR){
//                interrupted by sig handler return
                return -1;
            }
        }
        else if(rp->rio_cnt == 0){ // EOF
            return 0 ;
        }
        else{
            rp->rio_bufptr = rp->rio_buf; // reset buffer ptr
        }
    }
    // Copy min(n,rp->rio_cnt ) bytes from internal buf to  usr buf
    cnt = n;
    if( rp->rio_cnt <(ssize_t) n){
        cnt = rp->rio_cnt;
    }
    memcpy(usrbuf,rp->rio_bufptr,cnt);
    rp->rio_bufptr +=cnt;
    rp->rio_cnt -= cnt;
    return cnt;
}
/*
 * rio_readlineb - robustly read a text line (bufferd)
 */
ssize_t rio_readlineb(rio_t * rp , void *usrbuf,size_t maxlen){
    size_t n;
    ssize_t rc;
    char c , *bufp = (char *)usrbuf;
    for(n = 1;n<maxlen;n++){
        if( ( rc = rio_read(rp,&c,1))== 1){
            *bufp++ = c;
            if( c== '\n'){
                break;
            }
        }else if( rc == 0){
            if( n == 1){
                // return and close fd;
                return 0;   //EOF , no data read
            }else{
                break;      // EOF some data was read
            }
        }else if ( rc == -EAGAIN){
//            read next time
            return rc;
        }
        else{
            //error
            return  -1;
        }
    }
    *bufp = 0;
    return n;
}