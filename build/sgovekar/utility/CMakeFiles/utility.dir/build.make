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
include sgovekar/utility/CMakeFiles/utility.dir/depend.make

# Include the progress variables for this target.
include sgovekar/utility/CMakeFiles/utility.dir/progress.make

# Include the compile flags for this target's objects.
include sgovekar/utility/CMakeFiles/utility.dir/flags.make

sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o: sgovekar/utility/CMakeFiles/utility.dir/flags.make
sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o: /home/cerlab/24783/src/sgovekar/utility/utility.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/utility.cpp.o -c /home/cerlab/24783/src/sgovekar/utility/utility.cpp

sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/utility.cpp.i"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cerlab/24783/src/sgovekar/utility/utility.cpp > CMakeFiles/utility.dir/utility.cpp.i

sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/utility.cpp.s"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cerlab/24783/src/sgovekar/utility/utility.cpp -o CMakeFiles/utility.dir/utility.cpp.s

sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o.requires:

.PHONY : sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o.requires

sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o.provides: sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o.requires
	$(MAKE) -f sgovekar/utility/CMakeFiles/utility.dir/build.make sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o.provides.build
.PHONY : sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o.provides

sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o.provides.build: sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o


sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o: sgovekar/utility/CMakeFiles/utility.dir/flags.make
sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o: /home/cerlab/24783/src/sgovekar/utility/polygonalmesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/polygonalmesh.cpp.o -c /home/cerlab/24783/src/sgovekar/utility/polygonalmesh.cpp

sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/polygonalmesh.cpp.i"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cerlab/24783/src/sgovekar/utility/polygonalmesh.cpp > CMakeFiles/utility.dir/polygonalmesh.cpp.i

sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/polygonalmesh.cpp.s"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cerlab/24783/src/sgovekar/utility/polygonalmesh.cpp -o CMakeFiles/utility.dir/polygonalmesh.cpp.s

sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o.requires:

.PHONY : sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o.requires

sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o.provides: sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o.requires
	$(MAKE) -f sgovekar/utility/CMakeFiles/utility.dir/build.make sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o.provides.build
.PHONY : sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o.provides

sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o.provides.build: sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o


sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o: sgovekar/utility/CMakeFiles/utility.dir/flags.make
sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o: /home/cerlab/24783/src/sgovekar/utility/polygonalmeshio.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/polygonalmeshio.cpp.o -c /home/cerlab/24783/src/sgovekar/utility/polygonalmeshio.cpp

sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/polygonalmeshio.cpp.i"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cerlab/24783/src/sgovekar/utility/polygonalmeshio.cpp > CMakeFiles/utility.dir/polygonalmeshio.cpp.i

sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/polygonalmeshio.cpp.s"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cerlab/24783/src/sgovekar/utility/polygonalmeshio.cpp -o CMakeFiles/utility.dir/polygonalmeshio.cpp.s

sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o.requires:

.PHONY : sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o.requires

sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o.provides: sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o.requires
	$(MAKE) -f sgovekar/utility/CMakeFiles/utility.dir/build.make sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o.provides.build
.PHONY : sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o.provides

sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o.provides.build: sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o


sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o: sgovekar/utility/CMakeFiles/utility.dir/flags.make
sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o: /home/cerlab/24783/src/sgovekar/utility/glutil.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/glutil.cpp.o -c /home/cerlab/24783/src/sgovekar/utility/glutil.cpp

sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/glutil.cpp.i"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cerlab/24783/src/sgovekar/utility/glutil.cpp > CMakeFiles/utility.dir/glutil.cpp.i

sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/glutil.cpp.s"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cerlab/24783/src/sgovekar/utility/glutil.cpp -o CMakeFiles/utility.dir/glutil.cpp.s

sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o.requires:

.PHONY : sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o.requires

sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o.provides: sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o.requires
	$(MAKE) -f sgovekar/utility/CMakeFiles/utility.dir/build.make sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o.provides.build
.PHONY : sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o.provides

sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o.provides.build: sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o


sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o: sgovekar/utility/CMakeFiles/utility.dir/flags.make
sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o: /home/cerlab/24783/src/sgovekar/utility/meshlattice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/meshlattice.cpp.o -c /home/cerlab/24783/src/sgovekar/utility/meshlattice.cpp

sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/meshlattice.cpp.i"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cerlab/24783/src/sgovekar/utility/meshlattice.cpp > CMakeFiles/utility.dir/meshlattice.cpp.i

sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/meshlattice.cpp.s"
	cd /home/cerlab/24783/build/sgovekar/utility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cerlab/24783/src/sgovekar/utility/meshlattice.cpp -o CMakeFiles/utility.dir/meshlattice.cpp.s

sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o.requires:

.PHONY : sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o.requires

sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o.provides: sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o.requires
	$(MAKE) -f sgovekar/utility/CMakeFiles/utility.dir/build.make sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o.provides.build
.PHONY : sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o.provides

sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o.provides.build: sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o


# Object files for target utility
utility_OBJECTS = \
"CMakeFiles/utility.dir/utility.cpp.o" \
"CMakeFiles/utility.dir/polygonalmesh.cpp.o" \
"CMakeFiles/utility.dir/polygonalmeshio.cpp.o" \
"CMakeFiles/utility.dir/glutil.cpp.o" \
"CMakeFiles/utility.dir/meshlattice.cpp.o"

# External object files for target utility
utility_EXTERNAL_OBJECTS =

sgovekar/utility/libutility.a: sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o
sgovekar/utility/libutility.a: sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o
sgovekar/utility/libutility.a: sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o
sgovekar/utility/libutility.a: sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o
sgovekar/utility/libutility.a: sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o
sgovekar/utility/libutility.a: sgovekar/utility/CMakeFiles/utility.dir/build.make
sgovekar/utility/libutility.a: sgovekar/utility/CMakeFiles/utility.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libutility.a"
	cd /home/cerlab/24783/build/sgovekar/utility && $(CMAKE_COMMAND) -P CMakeFiles/utility.dir/cmake_clean_target.cmake
	cd /home/cerlab/24783/build/sgovekar/utility && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/utility.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sgovekar/utility/CMakeFiles/utility.dir/build: sgovekar/utility/libutility.a

.PHONY : sgovekar/utility/CMakeFiles/utility.dir/build

sgovekar/utility/CMakeFiles/utility.dir/requires: sgovekar/utility/CMakeFiles/utility.dir/utility.cpp.o.requires
sgovekar/utility/CMakeFiles/utility.dir/requires: sgovekar/utility/CMakeFiles/utility.dir/polygonalmesh.cpp.o.requires
sgovekar/utility/CMakeFiles/utility.dir/requires: sgovekar/utility/CMakeFiles/utility.dir/polygonalmeshio.cpp.o.requires
sgovekar/utility/CMakeFiles/utility.dir/requires: sgovekar/utility/CMakeFiles/utility.dir/glutil.cpp.o.requires
sgovekar/utility/CMakeFiles/utility.dir/requires: sgovekar/utility/CMakeFiles/utility.dir/meshlattice.cpp.o.requires

.PHONY : sgovekar/utility/CMakeFiles/utility.dir/requires

sgovekar/utility/CMakeFiles/utility.dir/clean:
	cd /home/cerlab/24783/build/sgovekar/utility && $(CMAKE_COMMAND) -P CMakeFiles/utility.dir/cmake_clean.cmake
.PHONY : sgovekar/utility/CMakeFiles/utility.dir/clean

sgovekar/utility/CMakeFiles/utility.dir/depend:
	cd /home/cerlab/24783/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/24783/src /home/cerlab/24783/src/sgovekar/utility /home/cerlab/24783/build /home/cerlab/24783/build/sgovekar/utility /home/cerlab/24783/build/sgovekar/utility/CMakeFiles/utility.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sgovekar/utility/CMakeFiles/utility.dir/depend

