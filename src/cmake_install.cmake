# Install script for directory: /home/eschulte/lisp/local-projects/gtirb/src

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
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so.1.2.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so.1.2.0")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so.1.2.0"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/eschulte/lisp/local-projects/gtirb/lib/libgtirb.so.1.2.0")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so.1.2.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so.1.2.0")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so.1.2.0")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/eschulte/lisp/local-projects/gtirb/lib/libgtirb.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgtirb.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtirb" TYPE FILE FILES
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Allocator.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/AuxData.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/AuxDataContainer.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/AuxDataSchema.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/ByteInterval.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/CodeBlock.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Casting.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Context.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/CFG.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/CfgNode.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/DataBlock.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Addr.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Export.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/IR.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Module.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Node.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Offset.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/ProxyBlock.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Section.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Serialization.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Symbol.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/SymbolicExpression.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/Utility.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/gtirb.hpp"
    "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/version.h.in"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/eschulte/lisp/local-projects/gtirb/include/proto")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtirb" TYPE FILE FILES "/home/eschulte/lisp/local-projects/gtirb/include/gtirb/version.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/eschulte/lisp/local-projects/gtirb/src/proto/cmake_install.cmake")
  include("/home/eschulte/lisp/local-projects/gtirb/src/test/cmake_install.cmake")

endif()

