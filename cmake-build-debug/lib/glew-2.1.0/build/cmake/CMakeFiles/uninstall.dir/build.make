# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\brand\Code\c++\gl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\brand\Code\c++\gl\cmake-build-debug

# Utility rule file for uninstall.

# Include the progress variables for this target.
include lib/glew-2.1.0/build/cmake/CMakeFiles/uninstall.dir/progress.make

lib/glew-2.1.0/build/cmake/CMakeFiles/uninstall:
	cd /d C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake && "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe" -P C:/Users/brand/Code/c++/gl/cmake-build-debug/lib/glew-2.1.0/build/cmake/cmake_uninstall.cmake

uninstall: lib/glew-2.1.0/build/cmake/CMakeFiles/uninstall
uninstall: lib/glew-2.1.0/build/cmake/CMakeFiles/uninstall.dir/build.make

.PHONY : uninstall

# Rule to build all files generated by this target.
lib/glew-2.1.0/build/cmake/CMakeFiles/uninstall.dir/build: uninstall

.PHONY : lib/glew-2.1.0/build/cmake/CMakeFiles/uninstall.dir/build

lib/glew-2.1.0/build/cmake/CMakeFiles/uninstall.dir/clean:
	cd /d C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake && $(CMAKE_COMMAND) -P CMakeFiles\uninstall.dir\cmake_clean.cmake
.PHONY : lib/glew-2.1.0/build/cmake/CMakeFiles/uninstall.dir/clean

lib/glew-2.1.0/build/cmake/CMakeFiles/uninstall.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\brand\Code\c++\gl C:\Users\brand\Code\c++\gl\lib\glew-2.1.0\build\cmake C:\Users\brand\Code\c++\gl\cmake-build-debug C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake\CMakeFiles\uninstall.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : lib/glew-2.1.0/build/cmake/CMakeFiles/uninstall.dir/depend
