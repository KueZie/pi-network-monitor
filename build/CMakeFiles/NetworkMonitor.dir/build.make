# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/pi/.local/pi-network-monitor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/.local/pi-network-monitor/build

# Include any dependencies generated for this target.
include CMakeFiles/NetworkMonitor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/NetworkMonitor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NetworkMonitor.dir/flags.make

CMakeFiles/NetworkMonitor.dir/main.c.o: CMakeFiles/NetworkMonitor.dir/flags.make
CMakeFiles/NetworkMonitor.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/.local/pi-network-monitor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/NetworkMonitor.dir/main.c.o"
	/usr/bin/arm-linux-gnueabihf-gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/NetworkMonitor.dir/main.c.o   -c /home/pi/.local/pi-network-monitor/main.c

CMakeFiles/NetworkMonitor.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NetworkMonitor.dir/main.c.i"
	/usr/bin/arm-linux-gnueabihf-gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/.local/pi-network-monitor/main.c > CMakeFiles/NetworkMonitor.dir/main.c.i

CMakeFiles/NetworkMonitor.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NetworkMonitor.dir/main.c.s"
	/usr/bin/arm-linux-gnueabihf-gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/.local/pi-network-monitor/main.c -o CMakeFiles/NetworkMonitor.dir/main.c.s

# Object files for target NetworkMonitor
NetworkMonitor_OBJECTS = \
"CMakeFiles/NetworkMonitor.dir/main.c.o"

# External object files for target NetworkMonitor
NetworkMonitor_EXTERNAL_OBJECTS =

NetworkMonitor: CMakeFiles/NetworkMonitor.dir/main.c.o
NetworkMonitor: CMakeFiles/NetworkMonitor.dir/build.make
NetworkMonitor: CMakeFiles/NetworkMonitor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/.local/pi-network-monitor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable NetworkMonitor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NetworkMonitor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NetworkMonitor.dir/build: NetworkMonitor

.PHONY : CMakeFiles/NetworkMonitor.dir/build

CMakeFiles/NetworkMonitor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NetworkMonitor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NetworkMonitor.dir/clean

CMakeFiles/NetworkMonitor.dir/depend:
	cd /home/pi/.local/pi-network-monitor/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/.local/pi-network-monitor /home/pi/.local/pi-network-monitor /home/pi/.local/pi-network-monitor/build /home/pi/.local/pi-network-monitor/build /home/pi/.local/pi-network-monitor/build/CMakeFiles/NetworkMonitor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NetworkMonitor.dir/depend

