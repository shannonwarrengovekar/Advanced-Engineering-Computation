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
include public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/depend.make

# Include the progress variables for this target.
include public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/progress.make

# Include the compile flags for this target's objects.
include public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/flags.make

public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o: public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/flags.make
public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o: /home/cerlab/24783/src/public/src/yssimplesound/src/nownd/yssimplesound_nownd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o"
	cd /home/cerlab/24783/build/public/src/yssimplesound/src/nownd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o -c /home/cerlab/24783/src/public/src/yssimplesound/src/nownd/yssimplesound_nownd.cpp

public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.i"
	cd /home/cerlab/24783/build/public/src/yssimplesound/src/nownd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cerlab/24783/src/public/src/yssimplesound/src/nownd/yssimplesound_nownd.cpp > CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.i

public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.s"
	cd /home/cerlab/24783/build/public/src/yssimplesound/src/nownd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cerlab/24783/src/public/src/yssimplesound/src/nownd/yssimplesound_nownd.cpp -o CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.s

public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o.requires:

.PHONY : public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o.requires

public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o.provides: public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o.requires
	$(MAKE) -f public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/build.make public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o.provides.build
.PHONY : public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o.provides

public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o.provides.build: public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o


# Object files for target yssimplesound_nownd
yssimplesound_nownd_OBJECTS = \
"CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o"

# External object files for target yssimplesound_nownd
yssimplesound_nownd_EXTERNAL_OBJECTS =

public/src/yssimplesound/src/nownd/libyssimplesound_nownd.a: public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o
public/src/yssimplesound/src/nownd/libyssimplesound_nownd.a: public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/build.make
public/src/yssimplesound/src/nownd/libyssimplesound_nownd.a: public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cerlab/24783/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libyssimplesound_nownd.a"
	cd /home/cerlab/24783/build/public/src/yssimplesound/src/nownd && $(CMAKE_COMMAND) -P CMakeFiles/yssimplesound_nownd.dir/cmake_clean_target.cmake
	cd /home/cerlab/24783/build/public/src/yssimplesound/src/nownd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yssimplesound_nownd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/build: public/src/yssimplesound/src/nownd/libyssimplesound_nownd.a

.PHONY : public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/build

public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/requires: public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/yssimplesound_nownd.cpp.o.requires

.PHONY : public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/requires

public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/clean:
	cd /home/cerlab/24783/build/public/src/yssimplesound/src/nownd && $(CMAKE_COMMAND) -P CMakeFiles/yssimplesound_nownd.dir/cmake_clean.cmake
.PHONY : public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/clean

public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/depend:
	cd /home/cerlab/24783/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cerlab/24783/src /home/cerlab/24783/src/public/src/yssimplesound/src/nownd /home/cerlab/24783/build /home/cerlab/24783/build/public/src/yssimplesound/src/nownd /home/cerlab/24783/build/public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : public/src/yssimplesound/src/nownd/CMakeFiles/yssimplesound_nownd.dir/depend
