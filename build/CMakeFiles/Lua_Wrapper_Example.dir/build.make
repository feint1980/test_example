# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.28

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\template\vs_code_cpp_examples\lua_wrapper_example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\template\vs_code_cpp_examples\lua_wrapper_example\build

# Include any dependencies generated for this target.
include CMakeFiles/Lua_Wrapper_Example.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Lua_Wrapper_Example.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Lua_Wrapper_Example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lua_Wrapper_Example.dir/flags.make

CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.obj: CMakeFiles/Lua_Wrapper_Example.dir/flags.make
CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.obj: CMakeFiles/Lua_Wrapper_Example.dir/includes_CXX.rsp
CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.obj: E:/template/vs_code_cpp_examples/lua_wrapper_example/src/main.cpp
CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.obj: CMakeFiles/Lua_Wrapper_Example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\template\vs_code_cpp_examples\lua_wrapper_example\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.obj"
	C:\SysGCC\mingw32\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.obj -MF CMakeFiles\Lua_Wrapper_Example.dir\src\main.cpp.obj.d -o CMakeFiles\Lua_Wrapper_Example.dir\src\main.cpp.obj -c E:\template\vs_code_cpp_examples\lua_wrapper_example\src\main.cpp

CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.i"
	C:\SysGCC\mingw32\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\template\vs_code_cpp_examples\lua_wrapper_example\src\main.cpp > CMakeFiles\Lua_Wrapper_Example.dir\src\main.cpp.i

CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.s"
	C:\SysGCC\mingw32\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\template\vs_code_cpp_examples\lua_wrapper_example\src\main.cpp -o CMakeFiles\Lua_Wrapper_Example.dir\src\main.cpp.s

# Object files for target Lua_Wrapper_Example
Lua_Wrapper_Example_OBJECTS = \
"CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.obj"

# External object files for target Lua_Wrapper_Example
Lua_Wrapper_Example_EXTERNAL_OBJECTS =

Lua_Wrapper_Example.exe: CMakeFiles/Lua_Wrapper_Example.dir/src/main.cpp.obj
Lua_Wrapper_Example.exe: CMakeFiles/Lua_Wrapper_Example.dir/build.make
Lua_Wrapper_Example.exe: E:/template/vs_code_cpp_examples/lua_wrapper_example/lib//liblua53.a
Lua_Wrapper_Example.exe: CMakeFiles/Lua_Wrapper_Example.dir/linkLibs.rsp
Lua_Wrapper_Example.exe: CMakeFiles/Lua_Wrapper_Example.dir/objects1.rsp
Lua_Wrapper_Example.exe: CMakeFiles/Lua_Wrapper_Example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\template\vs_code_cpp_examples\lua_wrapper_example\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Lua_Wrapper_Example.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Lua_Wrapper_Example.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lua_Wrapper_Example.dir/build: Lua_Wrapper_Example.exe
.PHONY : CMakeFiles/Lua_Wrapper_Example.dir/build

CMakeFiles/Lua_Wrapper_Example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Lua_Wrapper_Example.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Lua_Wrapper_Example.dir/clean

CMakeFiles/Lua_Wrapper_Example.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\template\vs_code_cpp_examples\lua_wrapper_example E:\template\vs_code_cpp_examples\lua_wrapper_example E:\template\vs_code_cpp_examples\lua_wrapper_example\build E:\template\vs_code_cpp_examples\lua_wrapper_example\build E:\template\vs_code_cpp_examples\lua_wrapper_example\build\CMakeFiles\Lua_Wrapper_Example.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Lua_Wrapper_Example.dir/depend

