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

# Include any dependencies generated for this target.
include lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/depend.make

# Include the progress variables for this target.
include lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/progress.make

# Include the compile flags for this target's objects.
include lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/flags.make

lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.obj: lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/flags.make
lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.obj: lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/includes_C.rsp
lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.obj: ../lib/glew-2.1.0/src/visualinfo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\brand\Code\c++\gl\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.obj"
	cd /d C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake && C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\visualinfo.dir\__\__\src\visualinfo.c.obj   -c C:\Users\brand\Code\c++\gl\lib\glew-2.1.0\src\visualinfo.c

lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.i"
	cd /d C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake && C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\brand\Code\c++\gl\lib\glew-2.1.0\src\visualinfo.c > CMakeFiles\visualinfo.dir\__\__\src\visualinfo.c.i

lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.s"
	cd /d C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake && C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\brand\Code\c++\gl\lib\glew-2.1.0\src\visualinfo.c -o CMakeFiles\visualinfo.dir\__\__\src\visualinfo.c.s

lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/__/visualinfo.rc.obj: lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/flags.make
lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/__/visualinfo.rc.obj: ../lib/glew-2.1.0/build/visualinfo.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\brand\Code\c++\gl\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building RC object lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/__/visualinfo.rc.obj"
	cd /d C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake && C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\windres.exe -O coff $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) C:\Users\brand\Code\c++\gl\lib\glew-2.1.0\build\visualinfo.rc CMakeFiles\visualinfo.dir\__\visualinfo.rc.obj

# Object files for target visualinfo
visualinfo_OBJECTS = \
"CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.obj" \
"CMakeFiles/visualinfo.dir/__/visualinfo.rc.obj"

# External object files for target visualinfo
visualinfo_EXTERNAL_OBJECTS =

bin/visualinfo.exe: lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.obj
bin/visualinfo.exe: lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/__/visualinfo.rc.obj
bin/visualinfo.exe: lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/build.make
bin/visualinfo.exe: lib/libglew32d.dll.a
bin/visualinfo.exe: lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/linklibs.rsp
bin/visualinfo.exe: lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/objects1.rsp
bin/visualinfo.exe: lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\brand\Code\c++\gl\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable ..\..\..\..\bin\visualinfo.exe"
	cd /d C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\visualinfo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/build: bin/visualinfo.exe

.PHONY : lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/build

lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/clean:
	cd /d C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake && $(CMAKE_COMMAND) -P CMakeFiles\visualinfo.dir\cmake_clean.cmake
.PHONY : lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/clean

lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\brand\Code\c++\gl C:\Users\brand\Code\c++\gl\lib\glew-2.1.0\build\cmake C:\Users\brand\Code\c++\gl\cmake-build-debug C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake C:\Users\brand\Code\c++\gl\cmake-build-debug\lib\glew-2.1.0\build\cmake\CMakeFiles\visualinfo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : lib/glew-2.1.0/build/cmake/CMakeFiles/visualinfo.dir/depend
