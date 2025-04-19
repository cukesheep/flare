cmake_minimum_required(VERSION 3.12)

set(CMAKE_CXX_STANDARD 17)

project(flare)

include_directories(${CMAKE_SOURCE_DIR}/external/glad/include)
include_directories(${CMAKE_SOURCE_DIR}/flare)

add_subdirectory(${CMAKE_SOURCE_DIR}/external/glfw)

file(GLOB_RECURSE SOURCES flare/*.cpp flare/*.h ${CMAKE_SOURCE_DIR}/external/glad/src/glad.c)

add_executable(flare ${SOURCES})

target_link_libraries(flare PUBLIC glfw)