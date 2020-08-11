#include <iostream>
#include <say-hello/hello.hpp>

int main(){

    for(int i=0; i<3; i++)
        hello::say_hello();

    std::cout << "The say-hello version is " << SAY_HELLO_VERSION << "\n";

    return 0;
}