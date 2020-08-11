#include "hello.hpp"

#include <iostream>

void hello::say_hello()
{
    std::cout << "Hello, world!\n" ;
    std::cout << "say-hello version is " << SAY_HELLO_VERSION << "\n";

}