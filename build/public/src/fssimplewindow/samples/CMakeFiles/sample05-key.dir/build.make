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
include public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/depend.make

# Include the progress variables for this target.
include public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/progress.make

# Include the compile flags for this target's objects.
include public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/flags.make

public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o: public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/flags.make
public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o: /home/cerlab/24783/src/public/src/fssimplewindow/samples/sample05-key/sample05-key.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o"
	cd /home/cerlab/24783/build/public/src/fssimplewindow/samples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o -c /home/cerlab/24783/src/public/src/fssimplewindow/samples/sample05-key/sample05-key.cpp

public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.i"
	cd /home/cerlab/24783/build/public/src/fssimplewindow/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cerlab/24783/src/public/src/fssimplewindow/samples/sample05-key/sample05-key.cpp > CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.i

public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.s"
	cd /home/cerlab/24783/build/public/src/fssimplewindow/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cerlab/24783/src/public/src/fssimplewindow/samples/sample05-key/sample05-key.cpp -o CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.s

public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o.requires:

.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o.requires

public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o.provides: public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o.requires
	$(MAKE) -f public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/build.make public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o.provides.build
.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o.provides

public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o.provides.build: public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o


# Object files for target sample05-key
sample05__key_OBJECTS = \
"CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o"

# External object files for target sample05-key
sample05__key_EXTERNAL_OBJECTS =

public/src/fssimplewindow/samples/sample05-key: public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o
public/src/fssimplewindow/samples/sample05-key: public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/build.make
public/src/fssimplewindow/samples/sample05-key: public/src/fssimplewindow/src/libfssimplewindow.a
public/src/fssimplewindow/samples/sample05-key: public/src/ysbitmapfont/src/libysbitmapfont.a
public/src/fssimplewindow/samples/sample05-key: public/src/ysgl/src/libysgl.a
public/src/fssimplewindow/samples/sample05-key: public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sample05-key"
	cd /home/cerlab/24783/build/public/src/fssimplewindow/samples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample05-key.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/build: public/src/fssimplewindow/samples/sample05-key

.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/build

public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/requires: public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/sample05-key/sample05-key.cpp.o.requires

.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/requires

public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/clean:
	cd /home/cerlab/24783/build/public/src/fssimplewindow/samples && $(CMAKE_COMMAND) -P CMakeFiles/sample05-key.dir/cmake_clean.cmake
.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/clean

public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/depend:
	cd /home/cerlab/24783/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/24783/src /home/cerlab/24783/src/public/src/fssimplewindow/samples /home/cerlab/24783/build /home/cerlab/24783/build/public/src/fssimplewindow/samples /home/cerlab/24783/build/public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : public/src/fssimplewindow/samples/CMakeFiles/sample05-key.dir/depend

