# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /home/denis/clion-2018.2.4/clion-2018.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/denis/clion-2018.2.4/clion-2018.2.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/denis/CLionProjects/ll_laba_5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/denis/CLionProjects/ll_laba_5/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ll_laba_5.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ll_laba_5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ll_laba_5.dir/flags.make

CMakeFiles/ll_laba_5.dir/main.cpp.o: CMakeFiles/ll_laba_5.dir/flags.make
CMakeFiles/ll_laba_5.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/denis/CLionProjects/ll_laba_5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ll_laba_5.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ll_laba_5.dir/main.cpp.o -c /home/denis/CLionProjects/ll_laba_5/main.cpp

CMakeFiles/ll_laba_5.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ll_laba_5.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/denis/CLionProjects/ll_laba_5/main.cpp > CMakeFiles/ll_laba_5.dir/main.cpp.i

CMakeFiles/ll_laba_5.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ll_laba_5.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/denis/CLionProjects/ll_laba_5/main.cpp -o CMakeFiles/ll_laba_5.dir/main.cpp.s

# Object files for target ll_laba_5
ll_laba_5_OBJECTS = \
"CMakeFiles/ll_laba_5.dir/main.cpp.o"

# External object files for target ll_laba_5
ll_laba_5_EXTERNAL_OBJECTS =

ll_laba_5: CMakeFiles/ll_laba_5.dir/main.cpp.o
ll_laba_5: CMakeFiles/ll_laba_5.dir/build.make
ll_laba_5: /usr/lib/x86_64-linux-gnu/libboost_system.so
ll_laba_5: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
ll_laba_5: CMakeFiles/ll_laba_5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/denis/CLionProjects/ll_laba_5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ll_laba_5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ll_laba_5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ll_laba_5.dir/build: ll_laba_5

.PHONY : CMakeFiles/ll_laba_5.dir/build

CMakeFiles/ll_laba_5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ll_laba_5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ll_laba_5.dir/clean

CMakeFiles/ll_laba_5.dir/depend:
	cd /home/denis/CLionProjects/ll_laba_5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/denis/CLionProjects/ll_laba_5 /home/denis/CLionProjects/ll_laba_5 /home/denis/CLionProjects/ll_laba_5/cmake-build-debug /home/denis/CLionProjects/ll_laba_5/cmake-build-debug /home/denis/CLionProjects/ll_laba_5/cmake-build-debug/CMakeFiles/ll_laba_5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ll_laba_5.dir/depend

