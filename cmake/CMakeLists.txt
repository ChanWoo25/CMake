cmake_minimum_required(VERSION 3.18)
project(Hello VERSION 1.0.1)

add_subdirectory(say-hello)
add_subdirectory(hello-exe)

# # Default : Static library
# add_library(
#     say-hello SHARED#libraries' name
#     hello.hpp
#     hello.cpp
# )

# add_executable(hello main.cpp)

# target_link_libraries(hello PRIVATE say-hello)