cmake_minimum_required(VERSION 3.16)
project(flare VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)

set(GLFW ${CMAKE_SOURCE_DIR}/external/glfw-3.4)
add_subdirectory(${GLFW})

# Find Vulkan package
find_package(Vulkan REQUIRED)


include_directories(${GLFW}/include)

include_directories(${Vulkan_INCLUDE_DIRS})

include_directories(${CMAKE_SOURCE_DIR}/external/glm)

link_libraries(glfw)
link_libraries(Vulkan::Vulkan)

add_subdirectory(flare)
add_subdirectory(examples)


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
