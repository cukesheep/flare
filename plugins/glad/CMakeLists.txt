cmake_minimum_required(VERSION 3.12)

project(glad)

add_library(glad src/glad.c)

target_include_directories(glad PUBLIC include)