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
include public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/depend.make

# Include the progress variables for this target.
include public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/progress.make

# Include the compile flags for this target's objects.
include public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/flags.make

public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o: public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/flags.make
public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o: /home/cerlab/24783/src/public/src/fssimplewindow/samples/sample00-lineart/sample00-lineart.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o"
	cd /home/cerlab/24783/build/public/src/fssimplewindow/samples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o -c /home/cerlab/24783/src/public/src/fssimplewindow/samples/sample00-lineart/sample00-lineart.cpp

public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.i"
	cd /home/cerlab/24783/build/public/src/fssimplewindow/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cerlab/24783/src/public/src/fssimplewindow/samples/sample00-lineart/sample00-lineart.cpp > CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.i

public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.s"
	cd /home/cerlab/24783/build/public/src/fssimplewindow/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cerlab/24783/src/public/src/fssimplewindow/samples/sample00-lineart/sample00-lineart.cpp -o CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.s

public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o.requires:

.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o.requires

public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o.provides: public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o.requires
	$(MAKE) -f public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/build.make public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o.provides.build
.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o.provides

public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o.provides.build: public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o


# Object files for target sample00-lineart
sample00__lineart_OBJECTS = \
"CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o"

# External object files for target sample00-lineart
sample00__lineart_EXTERNAL_OBJECTS =

public/src/fssimplewindow/samples/sample00-lineart: public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o
public/src/fssimplewindow/samples/sample00-lineart: public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/build.make
public/src/fssimplewindow/samples/sample00-lineart: public/src/fssimplewindow/src/libfssimplewindow.a
public/src/fssimplewindow/samples/sample00-lineart: public/src/ysbitmapfont/src/libysbitmapfont.a
public/src/fssimplewindow/samples/sample00-lineart: public/src/ysgl/src/libysgl.a
public/src/fssimplewindow/samples/sample00-lineart: public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sample00-lineart"
	cd /home/cerlab/24783/build/public/src/fssimplewindow/samples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample00-lineart.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/build: public/src/fssimplewindow/samples/sample00-lineart

.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/build

public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/requires: public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/sample00-lineart/sample00-lineart.cpp.o.requires

.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/requires

public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/clean:
	cd /home/cerlab/24783/build/public/src/fssimplewindow/samples && $(CMAKE_COMMAND) -P CMakeFiles/sample00-lineart.dir/cmake_clean.cmake
.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/clean

public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/depend:
	cd /home/cerlab/24783/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/24783/src /home/cerlab/24783/src/public/src/fssimplewindow/samples /home/cerlab/24783/build /home/cerlab/24783/build/public/src/fssimplewindow/samples /home/cerlab/24783/build/public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample00-lineart.dir/depend

