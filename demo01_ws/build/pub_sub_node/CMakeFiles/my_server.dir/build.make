# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/zhangtuopu/clion-2021.2.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/zhangtuopu/clion-2021.2.2/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhangtuopu/demo01_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhangtuopu/demo01_ws/build

# Include any dependencies generated for this target.
include pub_sub_node/CMakeFiles/my_server.dir/depend.make
# Include the progress variables for this target.
include pub_sub_node/CMakeFiles/my_server.dir/progress.make

# Include the compile flags for this target's objects.
include pub_sub_node/CMakeFiles/my_server.dir/flags.make

pub_sub_node/CMakeFiles/my_server.dir/src/my_server.cpp.o: pub_sub_node/CMakeFiles/my_server.dir/flags.make
pub_sub_node/CMakeFiles/my_server.dir/src/my_server.cpp.o: /home/zhangtuopu/demo01_ws/src/pub_sub_node/src/my_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangtuopu/demo01_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object pub_sub_node/CMakeFiles/my_server.dir/src/my_server.cpp.o"
	cd /home/zhangtuopu/demo01_ws/build/pub_sub_node && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_server.dir/src/my_server.cpp.o -c /home/zhangtuopu/demo01_ws/src/pub_sub_node/src/my_server.cpp

pub_sub_node/CMakeFiles/my_server.dir/src/my_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_server.dir/src/my_server.cpp.i"
	cd /home/zhangtuopu/demo01_ws/build/pub_sub_node && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangtuopu/demo01_ws/src/pub_sub_node/src/my_server.cpp > CMakeFiles/my_server.dir/src/my_server.cpp.i

pub_sub_node/CMakeFiles/my_server.dir/src/my_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_server.dir/src/my_server.cpp.s"
	cd /home/zhangtuopu/demo01_ws/build/pub_sub_node && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangtuopu/demo01_ws/src/pub_sub_node/src/my_server.cpp -o CMakeFiles/my_server.dir/src/my_server.cpp.s

# Object files for target my_server
my_server_OBJECTS = \
"CMakeFiles/my_server.dir/src/my_server.cpp.o"

# External object files for target my_server
my_server_EXTERNAL_OBJECTS =

/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: pub_sub_node/CMakeFiles/my_server.dir/src/my_server.cpp.o
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: pub_sub_node/CMakeFiles/my_server.dir/build.make
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /opt/ros/melodic/lib/libroscpp.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /opt/ros/melodic/lib/librosconsole.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /opt/ros/melodic/lib/librostime.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /opt/ros/melodic/lib/libcpp_common.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server: pub_sub_node/CMakeFiles/my_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhangtuopu/demo01_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server"
	cd /home/zhangtuopu/demo01_ws/build/pub_sub_node && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pub_sub_node/CMakeFiles/my_server.dir/build: /home/zhangtuopu/demo01_ws/devel/lib/pub_sub_node/my_server
.PHONY : pub_sub_node/CMakeFiles/my_server.dir/build

pub_sub_node/CMakeFiles/my_server.dir/clean:
	cd /home/zhangtuopu/demo01_ws/build/pub_sub_node && $(CMAKE_COMMAND) -P CMakeFiles/my_server.dir/cmake_clean.cmake
.PHONY : pub_sub_node/CMakeFiles/my_server.dir/clean

pub_sub_node/CMakeFiles/my_server.dir/depend:
	cd /home/zhangtuopu/demo01_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangtuopu/demo01_ws/src /home/zhangtuopu/demo01_ws/src/pub_sub_node /home/zhangtuopu/demo01_ws/build /home/zhangtuopu/demo01_ws/build/pub_sub_node /home/zhangtuopu/demo01_ws/build/pub_sub_node/CMakeFiles/my_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pub_sub_node/CMakeFiles/my_server.dir/depend
