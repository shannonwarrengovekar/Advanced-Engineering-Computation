# Install script for directory: /home/cerlab/24783/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/cerlab/24783/build/public/src/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/ps3/flythrough/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/ps3/orbit/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/simplebitmap/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/utility/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/utility/naca/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/ps4/ps4_1/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/ps4/ps4_2/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/ps5/ps5_1/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/ps5/ps5_2/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/ps6/ps6_1/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/ps6/ps6_2/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/ps7/cmake_install.cmake")
  include("/home/cerlab/24783/build/sgovekar/project_template/cmake_install.cmake")
  include("/home/cerlab/24783/build/The Good, The Bad, and The Ugly/Chess Engine/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/cerlab/24783/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
