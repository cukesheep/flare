file(GLOB_RECURSE SRC src/*.cpp)

add_library(flare ${SRC})

target_include_directories(flare PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

