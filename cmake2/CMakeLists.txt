# command_name(LIST OF ARGUMENTS)

# command_name(
#     LIST OF ARGUMENTS
#     ...
#     ...
#     )   IS OK

cmake_minimum_required(VERSION 3.12)

project(MyProject 
    VERSION 1.0.0
) # ALL arguments are string.
# Automatically created variable exists.
# ${PROJECT_NAME} = MyProject
# ${PROJECT_VERSION} = 1.0.0

set(MY_VARIABLE "I am a variable")

message(STATUS "I am a message")
message(STATUS "The variable value is: ${MY_VARIABLE}")

set(my_bool TRUE)

if(NOT my_bool)
    message(STATUS "Condition was met")
else()
    message(STATUS "Condition was failed")
endif()
# Detaild TRUE, FALSE Condition.
# https://cmake.org/cmake/help/latest/command/if.html
# True  if the constant is 1, ON, YES, TRUE, Y, or a non-zero number. 
# False if the constant is 0, OFF, NO, FALSE, N, IGNORE, NOTFOUND, 
#                        the empty string, or ends in the suffix -NOTFOUND

set(MY_STRING "This is a string.")
set(MY_OTHER_STRING "This is a string.")
set(my_value 3)

if((MY_STRING STREQUAL MY_OTHER_STRING) AND ("1" EQUAL my_value))
    message(STATUS "Condition TRUE!")
elseif(MY_OTHER_STRING MATCHES "string.$")
    message(STATUS "Variable ends with the word 'string'")
else()
    message(STATUS "Condition FALSE!")
endif()


while(my_value LESS 50)
    message(STATUS "Value is ${my_value}")
    math(EXPR my_value "${my_value} + 1")
endwhile()

foreach(item in ITEMS foo bar baz qux)
    message(STATUS "Index: ${item}")
endforeach()

foreach(idx RANGE 1 25 4)
    message(STATUS "Index is: ${idx}")
endforeach()

