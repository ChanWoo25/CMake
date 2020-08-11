add_library(
    say-hello
    src/say-hello/hello.cpp
    src/say-hello/hello.hpp
)

# Hello/say-hello/ 에 존재하는 파일들만 가지고 있는 say-hello library에
# Hello/say-hello/src/say-hello/ 의 소스 파일들을 추가 시켜 say-hello라는 라이브러리로 통홥시킨다.
# include <say-hello/hello.hpp> 같이 쓸 수 있게 한다.

# 다만 이 때, PUBLIC이면, 모든 함수, 변수들을 say-hello 라이브러리를 추가한 쪽에서 쓸 수 있지만,
# 만약 PRIVAT라면,
target_include_directories(say-hello PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src")

#preprocessor definiction
target_compile_definitions(say-hello PUBLIC SAY_HELLO_VERSION=8)