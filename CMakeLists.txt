cmake_minimum_required(VERSION 3.12)

project(flare)

set(CMAKE_CXX_STANDARD 17)


add_subdirectory(${CMAKE_SOURCE_DIR}/plugins/glm)
add_subdirectory(${CMAKE_SOURCE_DIR}/plugins/glad)
add_subdirectory(${CMAKE_SOURCE_DIR}/plugins/glfw)
add_subdirectory(${CMAKE_SOURCE_DIR}/plugins/assimp)

include_directories(${CMAKE_SOURCE_DIR}/flare)

add_executable(${PROJECT_NAME})
file(GLOB_RECURSE source "${CMAKE_SOURCE_DIR}/flare/*.cpp" "${CMAKE_SOURCE_DIR}/flare/*.h" "${CMAKE_SOURCE_DIR}/flare/*.hpp")
target_sources(${PROJECT_NAME} PUBLIC ${source})

target_link_libraries(${PROJECT_NAME} glfw)

target_link_libraries(${PROJECT_NAME} glm)

target_link_libraries(${PROJECT_NAME} glad)

target_link_libraries(${PROJECT_NAME} assimp)