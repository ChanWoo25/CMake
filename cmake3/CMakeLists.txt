cmake_minimum_required(VERSION 3.12)
project(MyProject VERSION 1.1.2)

set(my_list 1 2 3)
set(target GLOBAL)
set_property(
    ${target}
    PROPERTY FOO # PROPERTY : keyword specifier.
    ${my_list}
)

get_property(foo_value ${target} PROPERTY  FOO)
#  get_cmake_property(foo_value FOO)
message(STATUS "Value of FOO is ${foo_value}")
# Value of FOO is 1;2;3

function(do_cmake_good)
    message(STATUS "You called the function!")
endfunction()

do_cmake_good()

function(special first second third forth)
    foreach(arg IN LISTS ARGN)
        message(STATUS "Got ARGN argument: ${arg}")  # Limited       
    endforeach()
    foreach(arg IN LISTS ARGV)
        message(STATUS "Got ARGV argument: ${arg}") # no limit
    endforeach()
endfunction()
special(1 2 3 4 5 6 7 8)


function(sayMeow)
    message(STATUS "Value of global var is: ${MY_GLOBAL_VAR}")
    set(MY_GLOBAL_VAR 12)
    message(STATUS "Value of global var is now: ${MY_GLOBAL_VAR}")    
endfunction()
set(MY_GLOBAL_VAR Meow) 
sayMeow()
message(STATUS "Value of global var is after: ${MY_GLOBAL_VAR}")    


function(increment var)
    message(STATUS "Value before increment is ${${var}}")
    math(EXPR new_value "${${var}} + 1")
    message(STATUS "Value after increment is ${new_value}")    
endfunction()

function(increment2 var)
    math(EXPR new_value "${${var}} + 1")
    set(${var} ${new_value} PARENT_SCOPE)
    message(STATUS "Value is ${new_value}")
endfunction()

set(value 14)
increment(value)
increment2(value)
increment2(value)
increment2(value)
increment2(value)
message(STATUS "Final Value is ${value}")

function(sum out a b)
    math(EXPR ret "${a} + ${b}")
    set(${out} ${ret} PARENT_SCOPE)    
endfunction()


sum(value 3 5)
message(STATUS "Sum value is ${value}")