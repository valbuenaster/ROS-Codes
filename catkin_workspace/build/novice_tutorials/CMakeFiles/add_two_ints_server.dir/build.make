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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/luis/catkin_workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/luis/catkin_workspace/build

# Include any dependencies generated for this target.
include novice_tutorials/CMakeFiles/add_two_ints_server.dir/depend.make

# Include the progress variables for this target.
include novice_tutorials/CMakeFiles/add_two_ints_server.dir/progress.make

# Include the compile flags for this target's objects.
include novice_tutorials/CMakeFiles/add_two_ints_server.dir/flags.make

novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o: novice_tutorials/CMakeFiles/add_two_ints_server.dir/flags.make
novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o: /home/luis/catkin_workspace/src/novice_tutorials/src/add_two_ints_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/luis/catkin_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o"
	cd /home/luis/catkin_workspace/build/novice_tutorials && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o -c /home/luis/catkin_workspace/src/novice_tutorials/src/add_two_ints_server.cpp

novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.i"
	cd /home/luis/catkin_workspace/build/novice_tutorials && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/luis/catkin_workspace/src/novice_tutorials/src/add_two_ints_server.cpp > CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.i

novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.s"
	cd /home/luis/catkin_workspace/build/novice_tutorials && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/luis/catkin_workspace/src/novice_tutorials/src/add_two_ints_server.cpp -o CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.s

novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.requires:

.PHONY : novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.requires

novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.provides: novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.requires
	$(MAKE) -f novice_tutorials/CMakeFiles/add_two_ints_server.dir/build.make novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.provides.build
.PHONY : novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.provides

novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.provides.build: novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o


# Object files for target add_two_ints_server
add_two_ints_server_OBJECTS = \
"CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o"

# External object files for target add_two_ints_server
add_two_ints_server_EXTERNAL_OBJECTS =

/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: novice_tutorials/CMakeFiles/add_two_ints_server.dir/build.make
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /opt/ros/melodic/lib/libroscpp.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /opt/ros/melodic/lib/librosconsole.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /opt/ros/melodic/lib/librostime.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /opt/ros/melodic/lib/libcpp_common.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server: novice_tutorials/CMakeFiles/add_two_ints_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/luis/catkin_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server"
	cd /home/luis/catkin_workspace/build/novice_tutorials && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/add_two_ints_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
novice_tutorials/CMakeFiles/add_two_ints_server.dir/build: /home/luis/catkin_workspace/devel/lib/novice_tutorials/add_two_ints_server

.PHONY : novice_tutorials/CMakeFiles/add_two_ints_server.dir/build

novice_tutorials/CMakeFiles/add_two_ints_server.dir/requires: novice_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.requires

.PHONY : novice_tutorials/CMakeFiles/add_two_ints_server.dir/requires

novice_tutorials/CMakeFiles/add_two_ints_server.dir/clean:
	cd /home/luis/catkin_workspace/build/novice_tutorials && $(CMAKE_COMMAND) -P CMakeFiles/add_two_ints_server.dir/cmake_clean.cmake
.PHONY : novice_tutorials/CMakeFiles/add_two_ints_server.dir/clean

novice_tutorials/CMakeFiles/add_two_ints_server.dir/depend:
	cd /home/luis/catkin_workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/luis/catkin_workspace/src /home/luis/catkin_workspace/src/novice_tutorials /home/luis/catkin_workspace/build /home/luis/catkin_workspace/build/novice_tutorials /home/luis/catkin_workspace/build/novice_tutorials/CMakeFiles/add_two_ints_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : novice_tutorials/CMakeFiles/add_two_ints_server.dir/depend
