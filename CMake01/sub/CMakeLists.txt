cmake_minimum_required(VERSION 3.12)
project(
    sub
)

set(sVARF "sf" CACHE STRING "Forced and Cached var")
set(sVARI "si" CACHE STRING "Internal and Cached var")


set(gVAR "g" CACHE STRING "Global variable" FORCE)
mark_as_advanced(gVAR)

set(iVAR "in" CACHE INTERNAL "Internal global variable")