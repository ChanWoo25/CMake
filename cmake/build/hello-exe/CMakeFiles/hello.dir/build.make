# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/leecw/play/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leecw/play/cmake/build

# Include any dependencies generated for this target.
include hello-exe/CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include hello-exe/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include hello-exe/CMakeFiles/hello.dir/flags.make

hello-exe/CMakeFiles/hello.dir/main.cpp.o: hello-exe/CMakeFiles/hello.dir/flags.make
hello-exe/CMakeFiles/hello.dir/main.cpp.o: ../hello-exe/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leecw/play/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object hello-exe/CMakeFiles/hello.dir/main.cpp.o"
	cd /home/leecw/play/cmake/build/hello-exe && /usr/bin/g++-5 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello.dir/main.cpp.o -c /home/leecw/play/cmake/hello-exe/main.cpp

hello-exe/CMakeFiles/hello.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello.dir/main.cpp.i"
	cd /home/leecw/play/cmake/build/hello-exe && /usr/bin/g++-5 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leecw/play/cmake/hello-exe/main.cpp > CMakeFiles/hello.dir/main.cpp.i

hello-exe/CMakeFiles/hello.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello.dir/main.cpp.s"
	cd /home/leecw/play/cmake/build/hello-exe && /usr/bin/g++-5 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leecw/play/cmake/hello-exe/main.cpp -o CMakeFiles/hello.dir/main.cpp.s

# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/main.cpp.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

hello-exe/hello: hello-exe/CMakeFiles/hello.dir/main.cpp.o
hello-exe/hello: hello-exe/CMakeFiles/hello.dir/build.make
hello-exe/hello: say-hello/libsay-hello.a
hello-exe/hello: hello-exe/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leecw/play/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hello"
	cd /home/leecw/play/cmake/build/hello-exe && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hello-exe/CMakeFiles/hello.dir/build: hello-exe/hello

.PHONY : hello-exe/CMakeFiles/hello.dir/build

hello-exe/CMakeFiles/hello.dir/clean:
	cd /home/leecw/play/cmake/build/hello-exe && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : hello-exe/CMakeFiles/hello.dir/clean

hello-exe/CMakeFiles/hello.dir/depend:
	cd /home/leecw/play/cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leecw/play/cmake /home/leecw/play/cmake/hello-exe /home/leecw/play/cmake/build /home/leecw/play/cmake/build/hello-exe /home/leecw/play/cmake/build/hello-exe/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hello-exe/CMakeFiles/hello.dir/depend

