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
include public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/depend.make

# Include the progress variables for this target.
include public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/progress.make

# Include the compile flags for this target's objects.
include public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/flags.make

public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o: public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/flags.make
public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o: /home/cerlab/24783/src/public/src/ystexturemanager/src/gl/ystexturemanager_gl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o"
	cd /home/cerlab/24783/build/public/src/ystexturemanager/src/gl && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o -c /home/cerlab/24783/src/public/src/ystexturemanager/src/gl/ystexturemanager_gl.cpp

public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.i"
	cd /home/cerlab/24783/build/public/src/ystexturemanager/src/gl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cerlab/24783/src/public/src/ystexturemanager/src/gl/ystexturemanager_gl.cpp > CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.i

public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.s"
	cd /home/cerlab/24783/build/public/src/ystexturemanager/src/gl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cerlab/24783/src/public/src/ystexturemanager/src/gl/ystexturemanager_gl.cpp -o CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.s

public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o.requires:

.PHONY : public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o.requires

public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o.provides: public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o.requires
	$(MAKE) -f public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/build.make public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o.provides.build
.PHONY : public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o.provides

public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o.provides.build: public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o


# Object files for target ystexturemanager_gl
ystexturemanager_gl_OBJECTS = \
"CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o"

# External object files for target ystexturemanager_gl
ystexturemanager_gl_EXTERNAL_OBJECTS =

public/src/ystexturemanager/src/gl/libystexturemanager_gl.a: public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o
public/src/ystexturemanager/src/gl/libystexturemanager_gl.a: public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/build.make
public/src/ystexturemanager/src/gl/libystexturemanager_gl.a: public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libystexturemanager_gl.a"
	cd /home/cerlab/24783/build/public/src/ystexturemanager/src/gl && $(CMAKE_COMMAND) -P CMakeFiles/ystexturemanager_gl.dir/cmake_clean_target.cmake
	cd /home/cerlab/24783/build/public/src/ystexturemanager/src/gl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ystexturemanager_gl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/build: public/src/ystexturemanager/src/gl/libystexturemanager_gl.a

.PHONY : public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/build

public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/requires: public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/ystexturemanager_gl.cpp.o.requires

.PHONY : public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/requires

public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/clean:
	cd /home/cerlab/24783/build/public/src/ystexturemanager/src/gl && $(CMAKE_COMMAND) -P CMakeFiles/ystexturemanager_gl.dir/cmake_clean.cmake
.PHONY : public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/clean

public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/depend:
	cd /home/cerlab/24783/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/24783/src /home/cerlab/24783/src/public/src/ystexturemanager/src/gl /home/cerlab/24783/build /home/cerlab/24783/build/public/src/ystexturemanager/src/gl /home/cerlab/24783/build/public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : public/src/ystexturemanager/src/gl/CMakeFiles/ystexturemanager_gl.dir/depend

