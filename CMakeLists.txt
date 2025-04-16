cmake_minimum_required(VERSION 3.12)

project(flare)

include_directories(${CMAKE_SOURCE_DIR}/external/glad/include)
include_directories(${CMAKE_SOURCE_DIR}/source)

add_subdirectory(${CMAKE_SOURCE_DIR}/external/glfw)

add_subdirectory(source)
add_subdirectory(examples)



