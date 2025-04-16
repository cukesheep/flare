cmake_minimum_required(VERSION 3.12)
project(examples)
add_executable(${PROJECT_NAME} main.cpp)

target_link_libraries(examples source)

