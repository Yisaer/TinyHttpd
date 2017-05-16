
## Tinyhttpd

tinyhttpd is a minimum functional HTTP server with epoll & non-blocking I/O & threadpool programming model in C programming language.

## Compile and Run 

1. support only on Linux2.6+
2. make sure you have [cmake](https://cmake.org) installed

		mkdir build && cd build
		cmake .. && make
		cd .. && ./build/serve -c conf.conf
3. The default port is 3000 , You can visit URL **http://localhost:3000** directly.

## Support Function

* HTTP persistent connection
* browser cache
* Timer to detect the timeout events


## Programm model

* epoll
* non-blocking I/O
* Threadpool