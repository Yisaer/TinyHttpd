# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TinyHttpd.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TinyHttpd.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TinyHttpd.dir/flags.make

CMakeFiles/TinyHttpd.dir/main.c.o: CMakeFiles/TinyHttpd.dir/flags.make
CMakeFiles/TinyHttpd.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/TinyHttpd.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TinyHttpd.dir/main.c.o   -c /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/main.c

CMakeFiles/TinyHttpd.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TinyHttpd.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/main.c > CMakeFiles/TinyHttpd.dir/main.c.i

CMakeFiles/TinyHttpd.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TinyHttpd.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/main.c -o CMakeFiles/TinyHttpd.dir/main.c.s

CMakeFiles/TinyHttpd.dir/main.c.o.requires:

.PHONY : CMakeFiles/TinyHttpd.dir/main.c.o.requires

CMakeFiles/TinyHttpd.dir/main.c.o.provides: CMakeFiles/TinyHttpd.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/TinyHttpd.dir/build.make CMakeFiles/TinyHttpd.dir/main.c.o.provides.build
.PHONY : CMakeFiles/TinyHttpd.dir/main.c.o.provides

CMakeFiles/TinyHttpd.dir/main.c.o.provides.build: CMakeFiles/TinyHttpd.dir/main.c.o


CMakeFiles/TinyHttpd.dir/Rio.c.o: CMakeFiles/TinyHttpd.dir/flags.make
CMakeFiles/TinyHttpd.dir/Rio.c.o: ../Rio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/TinyHttpd.dir/Rio.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TinyHttpd.dir/Rio.c.o   -c /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/Rio.c

CMakeFiles/TinyHttpd.dir/Rio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TinyHttpd.dir/Rio.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/Rio.c > CMakeFiles/TinyHttpd.dir/Rio.c.i

CMakeFiles/TinyHttpd.dir/Rio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TinyHttpd.dir/Rio.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/Rio.c -o CMakeFiles/TinyHttpd.dir/Rio.c.s

CMakeFiles/TinyHttpd.dir/Rio.c.o.requires:

.PHONY : CMakeFiles/TinyHttpd.dir/Rio.c.o.requires

CMakeFiles/TinyHttpd.dir/Rio.c.o.provides: CMakeFiles/TinyHttpd.dir/Rio.c.o.requires
	$(MAKE) -f CMakeFiles/TinyHttpd.dir/build.make CMakeFiles/TinyHttpd.dir/Rio.c.o.provides.build
.PHONY : CMakeFiles/TinyHttpd.dir/Rio.c.o.provides

CMakeFiles/TinyHttpd.dir/Rio.c.o.provides.build: CMakeFiles/TinyHttpd.dir/Rio.c.o


CMakeFiles/TinyHttpd.dir/util.c.o: CMakeFiles/TinyHttpd.dir/flags.make
CMakeFiles/TinyHttpd.dir/util.c.o: ../util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/TinyHttpd.dir/util.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TinyHttpd.dir/util.c.o   -c /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/util.c

CMakeFiles/TinyHttpd.dir/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TinyHttpd.dir/util.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/util.c > CMakeFiles/TinyHttpd.dir/util.c.i

CMakeFiles/TinyHttpd.dir/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TinyHttpd.dir/util.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/util.c -o CMakeFiles/TinyHttpd.dir/util.c.s

CMakeFiles/TinyHttpd.dir/util.c.o.requires:

.PHONY : CMakeFiles/TinyHttpd.dir/util.c.o.requires

CMakeFiles/TinyHttpd.dir/util.c.o.provides: CMakeFiles/TinyHttpd.dir/util.c.o.requires
	$(MAKE) -f CMakeFiles/TinyHttpd.dir/build.make CMakeFiles/TinyHttpd.dir/util.c.o.provides.build
.PHONY : CMakeFiles/TinyHttpd.dir/util.c.o.provides

CMakeFiles/TinyHttpd.dir/util.c.o.provides.build: CMakeFiles/TinyHttpd.dir/util.c.o


CMakeFiles/TinyHttpd.dir/priority_queue.c.o: CMakeFiles/TinyHttpd.dir/flags.make
CMakeFiles/TinyHttpd.dir/priority_queue.c.o: ../priority_queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/TinyHttpd.dir/priority_queue.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TinyHttpd.dir/priority_queue.c.o   -c /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/priority_queue.c

CMakeFiles/TinyHttpd.dir/priority_queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TinyHttpd.dir/priority_queue.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/priority_queue.c > CMakeFiles/TinyHttpd.dir/priority_queue.c.i

CMakeFiles/TinyHttpd.dir/priority_queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TinyHttpd.dir/priority_queue.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/priority_queue.c -o CMakeFiles/TinyHttpd.dir/priority_queue.c.s

CMakeFiles/TinyHttpd.dir/priority_queue.c.o.requires:

.PHONY : CMakeFiles/TinyHttpd.dir/priority_queue.c.o.requires

CMakeFiles/TinyHttpd.dir/priority_queue.c.o.provides: CMakeFiles/TinyHttpd.dir/priority_queue.c.o.requires
	$(MAKE) -f CMakeFiles/TinyHttpd.dir/build.make CMakeFiles/TinyHttpd.dir/priority_queue.c.o.provides.build
.PHONY : CMakeFiles/TinyHttpd.dir/priority_queue.c.o.provides

CMakeFiles/TinyHttpd.dir/priority_queue.c.o.provides.build: CMakeFiles/TinyHttpd.dir/priority_queue.c.o


CMakeFiles/TinyHttpd.dir/threadpool.c.o: CMakeFiles/TinyHttpd.dir/flags.make
CMakeFiles/TinyHttpd.dir/threadpool.c.o: ../threadpool.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/TinyHttpd.dir/threadpool.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TinyHttpd.dir/threadpool.c.o   -c /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/threadpool.c

CMakeFiles/TinyHttpd.dir/threadpool.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TinyHttpd.dir/threadpool.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/threadpool.c > CMakeFiles/TinyHttpd.dir/threadpool.c.i

CMakeFiles/TinyHttpd.dir/threadpool.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TinyHttpd.dir/threadpool.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/threadpool.c -o CMakeFiles/TinyHttpd.dir/threadpool.c.s

CMakeFiles/TinyHttpd.dir/threadpool.c.o.requires:

.PHONY : CMakeFiles/TinyHttpd.dir/threadpool.c.o.requires

CMakeFiles/TinyHttpd.dir/threadpool.c.o.provides: CMakeFiles/TinyHttpd.dir/threadpool.c.o.requires
	$(MAKE) -f CMakeFiles/TinyHttpd.dir/build.make CMakeFiles/TinyHttpd.dir/threadpool.c.o.provides.build
.PHONY : CMakeFiles/TinyHttpd.dir/threadpool.c.o.provides

CMakeFiles/TinyHttpd.dir/threadpool.c.o.provides.build: CMakeFiles/TinyHttpd.dir/threadpool.c.o


# Object files for target TinyHttpd
TinyHttpd_OBJECTS = \
"CMakeFiles/TinyHttpd.dir/main.c.o" \
"CMakeFiles/TinyHttpd.dir/Rio.c.o" \
"CMakeFiles/TinyHttpd.dir/util.c.o" \
"CMakeFiles/TinyHttpd.dir/priority_queue.c.o" \
"CMakeFiles/TinyHttpd.dir/threadpool.c.o"

# External object files for target TinyHttpd
TinyHttpd_EXTERNAL_OBJECTS =

TinyHttpd: CMakeFiles/TinyHttpd.dir/main.c.o
TinyHttpd: CMakeFiles/TinyHttpd.dir/Rio.c.o
TinyHttpd: CMakeFiles/TinyHttpd.dir/util.c.o
TinyHttpd: CMakeFiles/TinyHttpd.dir/priority_queue.c.o
TinyHttpd: CMakeFiles/TinyHttpd.dir/threadpool.c.o
TinyHttpd: CMakeFiles/TinyHttpd.dir/build.make
TinyHttpd: CMakeFiles/TinyHttpd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable TinyHttpd"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TinyHttpd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TinyHttpd.dir/build: TinyHttpd

.PHONY : CMakeFiles/TinyHttpd.dir/build

CMakeFiles/TinyHttpd.dir/requires: CMakeFiles/TinyHttpd.dir/main.c.o.requires
CMakeFiles/TinyHttpd.dir/requires: CMakeFiles/TinyHttpd.dir/Rio.c.o.requires
CMakeFiles/TinyHttpd.dir/requires: CMakeFiles/TinyHttpd.dir/util.c.o.requires
CMakeFiles/TinyHttpd.dir/requires: CMakeFiles/TinyHttpd.dir/priority_queue.c.o.requires
CMakeFiles/TinyHttpd.dir/requires: CMakeFiles/TinyHttpd.dir/threadpool.c.o.requires

.PHONY : CMakeFiles/TinyHttpd.dir/requires

CMakeFiles/TinyHttpd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TinyHttpd.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TinyHttpd.dir/clean

CMakeFiles/TinyHttpd.dir/depend:
	cd /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/cmake-build-debug /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/cmake-build-debug /Users/Yisa/Desktop/github/TinyHttpd/TinyHttpd/cmake-build-debug/CMakeFiles/TinyHttpd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TinyHttpd.dir/depend

