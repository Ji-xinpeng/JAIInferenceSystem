# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/JAIInferenceSystem

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/JAIInferenceSystem/build

# Include any dependencies generated for this target.
include CMakeFiles/JAIInferenceSystem.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/JAIInferenceSystem.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/JAIInferenceSystem.dir/flags.make

CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.o: CMakeFiles/JAIInferenceSystem.dir/flags.make
CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.o: ../demo/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/JAIInferenceSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.o -c /home/JAIInferenceSystem/demo/main.cpp

CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/JAIInferenceSystem/demo/main.cpp > CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.i

CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/JAIInferenceSystem/demo/main.cpp -o CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.s

# Object files for target JAIInferenceSystem
JAIInferenceSystem_OBJECTS = \
"CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.o"

# External object files for target JAIInferenceSystem
JAIInferenceSystem_EXTERNAL_OBJECTS =

JAIInferenceSystem: CMakeFiles/JAIInferenceSystem.dir/demo/main.cpp.o
JAIInferenceSystem: CMakeFiles/JAIInferenceSystem.dir/build.make
JAIInferenceSystem: CMakeFiles/JAIInferenceSystem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/JAIInferenceSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable JAIInferenceSystem"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/JAIInferenceSystem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/JAIInferenceSystem.dir/build: JAIInferenceSystem

.PHONY : CMakeFiles/JAIInferenceSystem.dir/build

CMakeFiles/JAIInferenceSystem.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/JAIInferenceSystem.dir/cmake_clean.cmake
.PHONY : CMakeFiles/JAIInferenceSystem.dir/clean

CMakeFiles/JAIInferenceSystem.dir/depend:
	cd /home/JAIInferenceSystem/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/JAIInferenceSystem /home/JAIInferenceSystem /home/JAIInferenceSystem/build /home/JAIInferenceSystem/build /home/JAIInferenceSystem/build/CMakeFiles/JAIInferenceSystem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/JAIInferenceSystem.dir/depend

