# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/giorgio/another_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/giorgio/another_ws/build

# Include any dependencies generated for this target.
include image_common/polled_camera/CMakeFiles/polled_camera.dir/depend.make

# Include the progress variables for this target.
include image_common/polled_camera/CMakeFiles/polled_camera.dir/progress.make

# Include the compile flags for this target's objects.
include image_common/polled_camera/CMakeFiles/polled_camera.dir/flags.make

image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o: image_common/polled_camera/CMakeFiles/polled_camera.dir/flags.make
image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o: /home/giorgio/another_ws/src/image_common/polled_camera/src/publication_server.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/giorgio/another_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o"
	cd /home/giorgio/another_ws/build/image_common/polled_camera && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/polled_camera.dir/src/publication_server.cpp.o -c /home/giorgio/another_ws/src/image_common/polled_camera/src/publication_server.cpp

image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/polled_camera.dir/src/publication_server.cpp.i"
	cd /home/giorgio/another_ws/build/image_common/polled_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/giorgio/another_ws/src/image_common/polled_camera/src/publication_server.cpp > CMakeFiles/polled_camera.dir/src/publication_server.cpp.i

image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/polled_camera.dir/src/publication_server.cpp.s"
	cd /home/giorgio/another_ws/build/image_common/polled_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/giorgio/another_ws/src/image_common/polled_camera/src/publication_server.cpp -o CMakeFiles/polled_camera.dir/src/publication_server.cpp.s

image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o.requires:
.PHONY : image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o.requires

image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o.provides: image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o.requires
	$(MAKE) -f image_common/polled_camera/CMakeFiles/polled_camera.dir/build.make image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o.provides.build
.PHONY : image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o.provides

image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o.provides.build: image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o

# Object files for target polled_camera
polled_camera_OBJECTS = \
"CMakeFiles/polled_camera.dir/src/publication_server.cpp.o"

# External object files for target polled_camera
polled_camera_EXTERNAL_OBJECTS =

/home/giorgio/another_ws/devel/lib/libpolled_camera.so: image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: image_common/polled_camera/CMakeFiles/polled_camera.dir/build.make
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /home/giorgio/another_ws/devel/lib/libimage_transport.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/libmessage_filters.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/libclass_loader.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/libPocoFoundation.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libdl.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/libroslib.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/librospack.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/libroscpp.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/librosconsole.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/liblog4cxx.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/librostime.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /opt/ros/indigo/lib/libcpp_common.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/giorgio/another_ws/devel/lib/libpolled_camera.so: image_common/polled_camera/CMakeFiles/polled_camera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/giorgio/another_ws/devel/lib/libpolled_camera.so"
	cd /home/giorgio/another_ws/build/image_common/polled_camera && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/polled_camera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
image_common/polled_camera/CMakeFiles/polled_camera.dir/build: /home/giorgio/another_ws/devel/lib/libpolled_camera.so
.PHONY : image_common/polled_camera/CMakeFiles/polled_camera.dir/build

image_common/polled_camera/CMakeFiles/polled_camera.dir/requires: image_common/polled_camera/CMakeFiles/polled_camera.dir/src/publication_server.cpp.o.requires
.PHONY : image_common/polled_camera/CMakeFiles/polled_camera.dir/requires

image_common/polled_camera/CMakeFiles/polled_camera.dir/clean:
	cd /home/giorgio/another_ws/build/image_common/polled_camera && $(CMAKE_COMMAND) -P CMakeFiles/polled_camera.dir/cmake_clean.cmake
.PHONY : image_common/polled_camera/CMakeFiles/polled_camera.dir/clean

image_common/polled_camera/CMakeFiles/polled_camera.dir/depend:
	cd /home/giorgio/another_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/giorgio/another_ws/src /home/giorgio/another_ws/src/image_common/polled_camera /home/giorgio/another_ws/build /home/giorgio/another_ws/build/image_common/polled_camera /home/giorgio/another_ws/build/image_common/polled_camera/CMakeFiles/polled_camera.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : image_common/polled_camera/CMakeFiles/polled_camera.dir/depend

