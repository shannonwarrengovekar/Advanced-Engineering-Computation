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
include sgovekar/ps3/orbit/CMakeFiles/orbit.dir/depend.make

# Include the progress variables for this target.
include sgovekar/ps3/orbit/CMakeFiles/orbit.dir/progress.make

# Include the compile flags for this target's objects.
include sgovekar/ps3/orbit/CMakeFiles/orbit.dir/flags.make

sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o: sgovekar/ps3/orbit/CMakeFiles/orbit.dir/flags.make
sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o: /home/cerlab/24783/src/sgovekar/ps3/orbit/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o"
	cd /home/cerlab/24783/build/sgovekar/ps3/orbit && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orbit.dir/main.cpp.o -c /home/cerlab/24783/src/sgovekar/ps3/orbit/main.cpp

sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orbit.dir/main.cpp.i"
	cd /home/cerlab/24783/build/sgovekar/ps3/orbit && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cerlab/24783/src/sgovekar/ps3/orbit/main.cpp > CMakeFiles/orbit.dir/main.cpp.i

sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orbit.dir/main.cpp.s"
	cd /home/cerlab/24783/build/sgovekar/ps3/orbit && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cerlab/24783/src/sgovekar/ps3/orbit/main.cpp -o CMakeFiles/orbit.dir/main.cpp.s

sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o.requires:

.PHONY : sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o.requires

sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o.provides: sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o.requires
	$(MAKE) -f sgovekar/ps3/orbit/CMakeFiles/orbit.dir/build.make sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o.provides.build
.PHONY : sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o.provides

sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o.provides.build: sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o


# Object files for target orbit
orbit_OBJECTS = \
"CMakeFiles/orbit.dir/main.cpp.o"

# External object files for target orbit
orbit_EXTERNAL_OBJECTS =

sgovekar/ps3/orbit/orbit: sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o
sgovekar/ps3/orbit/orbit: sgovekar/ps3/orbit/CMakeFiles/orbit.dir/build.make
sgovekar/ps3/orbit/orbit: public/src/fslazywindow/src/libfslazywindow.a
sgovekar/ps3/orbit/orbit: public/src/fssimplewindow/src/libfssimplewindow.a
sgovekar/ps3/orbit/orbit: sgovekar/ps3/orbit/CMakeFiles/orbit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable orbit"
	cd /home/cerlab/24783/build/sgovekar/ps3/orbit && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/orbit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sgovekar/ps3/orbit/CMakeFiles/orbit.dir/build: sgovekar/ps3/orbit/orbit

.PHONY : sgovekar/ps3/orbit/CMakeFiles/orbit.dir/build

sgovekar/ps3/orbit/CMakeFiles/orbit.dir/requires: sgovekar/ps3/orbit/CMakeFiles/orbit.dir/main.cpp.o.requires

.PHONY : sgovekar/ps3/orbit/CMakeFiles/orbit.dir/requires

sgovekar/ps3/orbit/CMakeFiles/orbit.dir/clean:
	cd /home/cerlab/24783/build/sgovekar/ps3/orbit && $(CMAKE_COMMAND) -P CMakeFiles/orbit.dir/cmake_clean.cmake
.PHONY : sgovekar/ps3/orbit/CMakeFiles/orbit.dir/clean

sgovekar/ps3/orbit/CMakeFiles/orbit.dir/depend:
	cd /home/cerlab/24783/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/24783/src /home/cerlab/24783/src/sgovekar/ps3/orbit /home/cerlab/24783/build /home/cerlab/24783/build/sgovekar/ps3/orbit /home/cerlab/24783/build/sgovekar/ps3/orbit/CMakeFiles/orbit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sgovekar/ps3/orbit/CMakeFiles/orbit.dir/depend

