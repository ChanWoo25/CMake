cmake_minimum_required(VERSION 3.12...3.18)
project(cmake
    VERSION 1.0
    LANGUAGES CXX
)

set(default_build_type "Release")
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  message(STATUS "Setting build type to '${default_build_type}' as none was specified.")
  set(CMAKE_BUILD_TYPE "${default_build_type}" CACHE
      STRING "Choose the type of build." FORCE)
  # Set the possible values of build type for cmake-gui
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
    "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
endif()

add_subdirectory(src)

add_executable(main main.cpp)
target_compile_features(main PRIVATE cxx_std_14)
set_target_properties(main PROPERTIES
CXX_EXTENSIONS  OFF
)

target_link_libraries(main 
PUBLIC hello
)
# target_include_directories(
#     main
#   PUBLIC
#     $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
#     $<INSTALL_INTERFACE>
# )