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
include sgovekar/ps2/bounce/CMakeFiles/bounce.dir/depend.make

# Include the progress variables for this target.
include sgovekar/ps2/bounce/CMakeFiles/bounce.dir/progress.make

# Include the compile flags for this target's objects.
include sgovekar/ps2/bounce/CMakeFiles/bounce.dir/flags.make

sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o: sgovekar/ps2/bounce/CMakeFiles/bounce.dir/flags.make
sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o: /home/cerlab/24783/src/sgovekar/ps2/bounce/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o"
	cd /home/cerlab/24783/build/sgovekar/ps2/bounce && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bounce.dir/main.cpp.o -c /home/cerlab/24783/src/sgovekar/ps2/bounce/main.cpp

sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bounce.dir/main.cpp.i"
	cd /home/cerlab/24783/build/sgovekar/ps2/bounce && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cerlab/24783/src/sgovekar/ps2/bounce/main.cpp > CMakeFiles/bounce.dir/main.cpp.i

sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bounce.dir/main.cpp.s"
	cd /home/cerlab/24783/build/sgovekar/ps2/bounce && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cerlab/24783/src/sgovekar/ps2/bounce/main.cpp -o CMakeFiles/bounce.dir/main.cpp.s

sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o.requires:

.PHONY : sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o.requires

sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o.provides: sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o.requires
	$(MAKE) -f sgovekar/ps2/bounce/CMakeFiles/bounce.dir/build.make sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o.provides.build
.PHONY : sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o.provides

sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o.provides.build: sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o


# Object files for target bounce
bounce_OBJECTS = \
"CMakeFiles/bounce.dir/main.cpp.o"

# External object files for target bounce
bounce_EXTERNAL_OBJECTS =

sgovekar/ps2/bounce/bounce: sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o
sgovekar/ps2/bounce/bounce: sgovekar/ps2/bounce/CMakeFiles/bounce.dir/build.make
sgovekar/ps2/bounce/bounce: public/src/fslazywindow/src/libfslazywindow.a
sgovekar/ps2/bounce/bounce: public/src/fssimplewindow/src/libfssimplewindow.a
sgovekar/ps2/bounce/bounce: sgovekar/ps2/bounce/CMakeFiles/bounce.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bounce"
	cd /home/cerlab/24783/build/sgovekar/ps2/bounce && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bounce.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sgovekar/ps2/bounce/CMakeFiles/bounce.dir/build: sgovekar/ps2/bounce/bounce

.PHONY : sgovekar/ps2/bounce/CMakeFiles/bounce.dir/build

sgovekar/ps2/bounce/CMakeFiles/bounce.dir/requires: sgovekar/ps2/bounce/CMakeFiles/bounce.dir/main.cpp.o.requires

.PHONY : sgovekar/ps2/bounce/CMakeFiles/bounce.dir/requires

sgovekar/ps2/bounce/CMakeFiles/bounce.dir/clean:
	cd /home/cerlab/24783/build/sgovekar/ps2/bounce && $(CMAKE_COMMAND) -P CMakeFiles/bounce.dir/cmake_clean.cmake
.PHONY : sgovekar/ps2/bounce/CMakeFiles/bounce.dir/clean

sgovekar/ps2/bounce/CMakeFiles/bounce.dir/depend:
	cd /home/cerlab/24783/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/24783/src /home/cerlab/24783/src/sgovekar/ps2/bounce /home/cerlab/24783/build /home/cerlab/24783/build/sgovekar/ps2/bounce /home/cerlab/24783/build/sgovekar/ps2/bounce/CMakeFiles/bounce.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sgovekar/ps2/bounce/CMakeFiles/bounce.dir/depend

