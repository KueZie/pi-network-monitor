cmake_minimum_required(VERSION 3.13)
project(pi_network_monitor C)

set(CMAKE_C_STANDARD 11)

include_directories(vendor)
include_directories(vendor/logging)

add_executable(pi_network_monitor
        vendor/logging/logging.h
        main.c)
