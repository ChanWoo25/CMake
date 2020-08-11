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