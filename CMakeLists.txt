cmake_minimum_required(VERSION 3.13)

project(NetworkMonitor)

set(SOURCES main.c)

add_executable(${CMAKE_PROJECT_NAME} ${SOURCES})