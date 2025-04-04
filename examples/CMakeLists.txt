set(TARGET example)
add_executable(example main.cpp)

target_link_libraries(${TARGET} PUBLIC flare)
