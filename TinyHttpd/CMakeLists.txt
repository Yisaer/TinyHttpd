cmake_minimum_required(VERSION 3.7)
project(TinyHttpd)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES main.c Rio.c Rio.h dbg.h error.h)
add_executable(TinyHttpd ${SOURCE_FILES})