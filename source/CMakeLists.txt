cmake_minimum_required(VERSION 3.12)
project(source)



file(GLOB_RECURSE SOURCE *.cpp ${CMAKE_SOURCE_DIR}/external/glad/src/glad.c)
add_library(source ${SOURCE})

target_link_libraries(source glfw)