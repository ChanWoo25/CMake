
# Note that headers are optional, and do not affect add_library, but they will not
# show up in IDEs unless they are listed in add_library.

# Not essentially needed
# cmake_minimum_required(VERSION 3.12...3.18)
# project(libcmake)


add_library(hello STATIC 
hello.cpp
${CMAKE_HOME_DIRECTORY}/include/hello.hpp
)

# We need this directory, and users of our library will need it too
target_include_directories(hello PUBLIC ../include)

# All users of this library will need at least C++11
target_compile_features(hello PUBLIC cxx_std_11)
set_target_properties(hello PROPERTIES
CXX_EXTENSIONS  OFF
)


message(STATUS "CMAKE_HOME_DIRECTORY is ${CMAKE_HOME_DIRECTORY}")

# IDEs should put the headers in a nice place
source_group(
  TREE "${PROJECT_SOURCE_DIR}/include"
  PREFIX "Header Files"
  FILES ${HEADER_LIST}
)