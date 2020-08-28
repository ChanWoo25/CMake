cmake_minimum_required(VERSION 3.12)
project(
    cmake
    VERSION     1.0.0
    DESCRIPTION "For Studying CMake"
    LANGUAGES   CXX 
)

set(MY_LIST "One" "Two")
set(UR_LIST "One;Two")
message(${MY_LIST})
message(${UR_LIST}) # 2 variable's same!

set(NO_CACHED_VAR "no-cached")
set(CACHED_VAR "cached" CACHE STRING "This is Cached Var")
set(AD_CACHED_VAR "adcached" CACHE STRING "This is Advanced Cached Var")
mark_as_advanced(AD_CACHED_VAR)
set(FORCED_VAR "forced" CACHE STRING "This is Forced Var" FORCE) # Description은 달겠지만, 변경은 허용않겠다.
set(FORCED_N_ADVANCED_VAR "advanced" CACHE STRING "This is Hidden Var" FORCE)
mark_as_advanced(FORCED_N_ADVANCED_VAR)
set(INTERNAL_VAR "internal" CACHE INTERNAL "This is Internal Var")

message("${NO_CACHED_VAR}")
message("${CACHED_VAR}")
message("${AD_CACHED_VAR}")
message("${FORCED_VAR}")
message("${FORCED_N_ADVANCED_VAR}")
message("${INTERNAL_VAR}")


option(boo "Bool type variable" ON)
message(${boo})

add_executable(root src/hello.cpp)
set_property(
    TARGET root
    PROPERTY CXX_STANDARD 11
    )
get_property(root_cxx TARGET root PROPERTY CXX_STANDARD)
message("${root_cxx}")