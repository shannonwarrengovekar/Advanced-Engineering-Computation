# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cerlab/24783/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cerlab/24783/build

# Include any dependencies generated for this target.
include The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/depend.make

# Include the progress variables for this target.
include The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/progress.make

# Include the compile flags for this target's objects.
include The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/flags.make

The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o: The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/flags.make
The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o: /home/cerlab/24783/src/The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/definitions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object The Good, The Bad, and The Ugly/Chess Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o"
	cd "/home/cerlab/24783/build/The Good, The Bad, and The Ugly/Chess Engine/include/definitions" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/definitions.dir/definitions.cpp.o -c "/home/cerlab/24783/src/The Good, The Bad, and The Ugly/Chess Engine/include/definitions/definitions.cpp"

The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/definitions.dir/definitions.cpp.i"
	cd "/home/cerlab/24783/build/The Good, The Bad, and The Ugly/Chess Engine/include/definitions" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/cerlab/24783/src/The Good, The Bad, and The Ugly/Chess Engine/include/definitions/definitions.cpp" > CMakeFiles/definitions.dir/definitions.cpp.i

The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/definitions.dir/definitions.cpp.s"
	cd "/home/cerlab/24783/build/The Good, The Bad, and The Ugly/Chess Engine/include/definitions" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/cerlab/24783/src/The Good, The Bad, and The Ugly/Chess Engine/include/definitions/definitions.cpp" -o CMakeFiles/definitions.dir/definitions.cpp.s

The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o.requires:

.PHONY : The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o.requires

The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o.provides: The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o.requires
	$(MAKE) -f "The Good, The Bad, and The Ugly/Chess Engine/include/definitions/CMakeFiles/definitions.dir/build.make" "The Good, The Bad, and The Ugly/Chess Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o.provides.build"
.PHONY : The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o.provides

The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o.provides.build: The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o


# Object files for target definitions
definitions_OBJECTS = \
"CMakeFiles/definitions.dir/definitions.cpp.o"

# External object files for target definitions
definitions_EXTERNAL_OBJECTS =

The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/libdefinitions.a: The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o
The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/libdefinitions.a: The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/build.make
The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/libdefinitions.a: The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdefinitions.a"
	cd "/home/cerlab/24783/build/The Good, The Bad, and The Ugly/Chess Engine/include/definitions" && $(CMAKE_COMMAND) -P CMakeFiles/definitions.dir/cmake_clean_target.cmake
	cd "/home/cerlab/24783/build/The Good, The Bad, and The Ugly/Chess Engine/include/definitions" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/definitions.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/build: The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/libdefinitions.a

.PHONY : The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/build

The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/requires: The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/definitions.cpp.o.requires

.PHONY : The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/requires

The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/clean:
	cd "/home/cerlab/24783/build/The Good, The Bad, and The Ugly/Chess Engine/include/definitions" && $(CMAKE_COMMAND) -P CMakeFiles/definitions.dir/cmake_clean.cmake
.PHONY : The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/clean

The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/depend:
	cd /home/cerlab/24783/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/24783/src "/home/cerlab/24783/src/The Good, The Bad, and The Ugly/Chess Engine/include/definitions" /home/cerlab/24783/build "/home/cerlab/24783/build/The Good, The Bad, and The Ugly/Chess Engine/include/definitions" "/home/cerlab/24783/build/The Good, The Bad, and The Ugly/Chess Engine/include/definitions/CMakeFiles/definitions.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : The\ Good,\ The\ Bad,\ and\ The\ Ugly/Chess\ Engine/include/definitions/CMakeFiles/definitions.dir/depend
