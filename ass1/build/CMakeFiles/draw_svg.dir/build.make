# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yujiex/Public/asst1_drawsvg/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yujiex/Public/asst1_drawsvg/build

# Include any dependencies generated for this target.
include CMakeFiles/draw_svg.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/draw_svg.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/draw_svg.dir/flags.make

CMakeFiles/draw_svg.dir/svg.cpp.o: CMakeFiles/draw_svg.dir/flags.make
CMakeFiles/draw_svg.dir/svg.cpp.o: /home/yujiex/Public/asst1_drawsvg/src/svg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yujiex/Public/asst1_drawsvg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/draw_svg.dir/svg.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/draw_svg.dir/svg.cpp.o -c /home/yujiex/Public/asst1_drawsvg/src/svg.cpp

CMakeFiles/draw_svg.dir/svg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw_svg.dir/svg.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yujiex/Public/asst1_drawsvg/src/svg.cpp > CMakeFiles/draw_svg.dir/svg.cpp.i

CMakeFiles/draw_svg.dir/svg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw_svg.dir/svg.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yujiex/Public/asst1_drawsvg/src/svg.cpp -o CMakeFiles/draw_svg.dir/svg.cpp.s

CMakeFiles/draw_svg.dir/svg.cpp.o.requires:

.PHONY : CMakeFiles/draw_svg.dir/svg.cpp.o.requires

CMakeFiles/draw_svg.dir/svg.cpp.o.provides: CMakeFiles/draw_svg.dir/svg.cpp.o.requires
	$(MAKE) -f CMakeFiles/draw_svg.dir/build.make CMakeFiles/draw_svg.dir/svg.cpp.o.provides.build
.PHONY : CMakeFiles/draw_svg.dir/svg.cpp.o.provides

CMakeFiles/draw_svg.dir/svg.cpp.o.provides.build: CMakeFiles/draw_svg.dir/svg.cpp.o


CMakeFiles/draw_svg.dir/png.cpp.o: CMakeFiles/draw_svg.dir/flags.make
CMakeFiles/draw_svg.dir/png.cpp.o: /home/yujiex/Public/asst1_drawsvg/src/png.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yujiex/Public/asst1_drawsvg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/draw_svg.dir/png.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/draw_svg.dir/png.cpp.o -c /home/yujiex/Public/asst1_drawsvg/src/png.cpp

CMakeFiles/draw_svg.dir/png.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw_svg.dir/png.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yujiex/Public/asst1_drawsvg/src/png.cpp > CMakeFiles/draw_svg.dir/png.cpp.i

CMakeFiles/draw_svg.dir/png.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw_svg.dir/png.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yujiex/Public/asst1_drawsvg/src/png.cpp -o CMakeFiles/draw_svg.dir/png.cpp.s

CMakeFiles/draw_svg.dir/png.cpp.o.requires:

.PHONY : CMakeFiles/draw_svg.dir/png.cpp.o.requires

CMakeFiles/draw_svg.dir/png.cpp.o.provides: CMakeFiles/draw_svg.dir/png.cpp.o.requires
	$(MAKE) -f CMakeFiles/draw_svg.dir/build.make CMakeFiles/draw_svg.dir/png.cpp.o.provides.build
.PHONY : CMakeFiles/draw_svg.dir/png.cpp.o.provides

CMakeFiles/draw_svg.dir/png.cpp.o.provides.build: CMakeFiles/draw_svg.dir/png.cpp.o


CMakeFiles/draw_svg.dir/texture.cpp.o: CMakeFiles/draw_svg.dir/flags.make
CMakeFiles/draw_svg.dir/texture.cpp.o: /home/yujiex/Public/asst1_drawsvg/src/texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yujiex/Public/asst1_drawsvg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/draw_svg.dir/texture.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/draw_svg.dir/texture.cpp.o -c /home/yujiex/Public/asst1_drawsvg/src/texture.cpp

CMakeFiles/draw_svg.dir/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw_svg.dir/texture.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yujiex/Public/asst1_drawsvg/src/texture.cpp > CMakeFiles/draw_svg.dir/texture.cpp.i

CMakeFiles/draw_svg.dir/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw_svg.dir/texture.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yujiex/Public/asst1_drawsvg/src/texture.cpp -o CMakeFiles/draw_svg.dir/texture.cpp.s

CMakeFiles/draw_svg.dir/texture.cpp.o.requires:

.PHONY : CMakeFiles/draw_svg.dir/texture.cpp.o.requires

CMakeFiles/draw_svg.dir/texture.cpp.o.provides: CMakeFiles/draw_svg.dir/texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/draw_svg.dir/build.make CMakeFiles/draw_svg.dir/texture.cpp.o.provides.build
.PHONY : CMakeFiles/draw_svg.dir/texture.cpp.o.provides

CMakeFiles/draw_svg.dir/texture.cpp.o.provides.build: CMakeFiles/draw_svg.dir/texture.cpp.o


CMakeFiles/draw_svg.dir/viewport.cpp.o: CMakeFiles/draw_svg.dir/flags.make
CMakeFiles/draw_svg.dir/viewport.cpp.o: /home/yujiex/Public/asst1_drawsvg/src/viewport.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yujiex/Public/asst1_drawsvg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/draw_svg.dir/viewport.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/draw_svg.dir/viewport.cpp.o -c /home/yujiex/Public/asst1_drawsvg/src/viewport.cpp

CMakeFiles/draw_svg.dir/viewport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw_svg.dir/viewport.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yujiex/Public/asst1_drawsvg/src/viewport.cpp > CMakeFiles/draw_svg.dir/viewport.cpp.i

CMakeFiles/draw_svg.dir/viewport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw_svg.dir/viewport.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yujiex/Public/asst1_drawsvg/src/viewport.cpp -o CMakeFiles/draw_svg.dir/viewport.cpp.s

CMakeFiles/draw_svg.dir/viewport.cpp.o.requires:

.PHONY : CMakeFiles/draw_svg.dir/viewport.cpp.o.requires

CMakeFiles/draw_svg.dir/viewport.cpp.o.provides: CMakeFiles/draw_svg.dir/viewport.cpp.o.requires
	$(MAKE) -f CMakeFiles/draw_svg.dir/build.make CMakeFiles/draw_svg.dir/viewport.cpp.o.provides.build
.PHONY : CMakeFiles/draw_svg.dir/viewport.cpp.o.provides

CMakeFiles/draw_svg.dir/viewport.cpp.o.provides.build: CMakeFiles/draw_svg.dir/viewport.cpp.o


CMakeFiles/draw_svg.dir/triangulation.cpp.o: CMakeFiles/draw_svg.dir/flags.make
CMakeFiles/draw_svg.dir/triangulation.cpp.o: /home/yujiex/Public/asst1_drawsvg/src/triangulation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yujiex/Public/asst1_drawsvg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/draw_svg.dir/triangulation.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/draw_svg.dir/triangulation.cpp.o -c /home/yujiex/Public/asst1_drawsvg/src/triangulation.cpp

CMakeFiles/draw_svg.dir/triangulation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw_svg.dir/triangulation.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yujiex/Public/asst1_drawsvg/src/triangulation.cpp > CMakeFiles/draw_svg.dir/triangulation.cpp.i

CMakeFiles/draw_svg.dir/triangulation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw_svg.dir/triangulation.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yujiex/Public/asst1_drawsvg/src/triangulation.cpp -o CMakeFiles/draw_svg.dir/triangulation.cpp.s

CMakeFiles/draw_svg.dir/triangulation.cpp.o.requires:

.PHONY : CMakeFiles/draw_svg.dir/triangulation.cpp.o.requires

CMakeFiles/draw_svg.dir/triangulation.cpp.o.provides: CMakeFiles/draw_svg.dir/triangulation.cpp.o.requires
	$(MAKE) -f CMakeFiles/draw_svg.dir/build.make CMakeFiles/draw_svg.dir/triangulation.cpp.o.provides.build
.PHONY : CMakeFiles/draw_svg.dir/triangulation.cpp.o.provides

CMakeFiles/draw_svg.dir/triangulation.cpp.o.provides.build: CMakeFiles/draw_svg.dir/triangulation.cpp.o


CMakeFiles/draw_svg.dir/software_renderer.cpp.o: CMakeFiles/draw_svg.dir/flags.make
CMakeFiles/draw_svg.dir/software_renderer.cpp.o: /home/yujiex/Public/asst1_drawsvg/src/software_renderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yujiex/Public/asst1_drawsvg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/draw_svg.dir/software_renderer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/draw_svg.dir/software_renderer.cpp.o -c /home/yujiex/Public/asst1_drawsvg/src/software_renderer.cpp

CMakeFiles/draw_svg.dir/software_renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw_svg.dir/software_renderer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yujiex/Public/asst1_drawsvg/src/software_renderer.cpp > CMakeFiles/draw_svg.dir/software_renderer.cpp.i

CMakeFiles/draw_svg.dir/software_renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw_svg.dir/software_renderer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yujiex/Public/asst1_drawsvg/src/software_renderer.cpp -o CMakeFiles/draw_svg.dir/software_renderer.cpp.s

CMakeFiles/draw_svg.dir/software_renderer.cpp.o.requires:

.PHONY : CMakeFiles/draw_svg.dir/software_renderer.cpp.o.requires

CMakeFiles/draw_svg.dir/software_renderer.cpp.o.provides: CMakeFiles/draw_svg.dir/software_renderer.cpp.o.requires
	$(MAKE) -f CMakeFiles/draw_svg.dir/build.make CMakeFiles/draw_svg.dir/software_renderer.cpp.o.provides.build
.PHONY : CMakeFiles/draw_svg.dir/software_renderer.cpp.o.provides

CMakeFiles/draw_svg.dir/software_renderer.cpp.o.provides.build: CMakeFiles/draw_svg.dir/software_renderer.cpp.o


CMakeFiles/draw_svg.dir/drawsvg.cpp.o: CMakeFiles/draw_svg.dir/flags.make
CMakeFiles/draw_svg.dir/drawsvg.cpp.o: /home/yujiex/Public/asst1_drawsvg/src/drawsvg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yujiex/Public/asst1_drawsvg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/draw_svg.dir/drawsvg.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/draw_svg.dir/drawsvg.cpp.o -c /home/yujiex/Public/asst1_drawsvg/src/drawsvg.cpp

CMakeFiles/draw_svg.dir/drawsvg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw_svg.dir/drawsvg.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yujiex/Public/asst1_drawsvg/src/drawsvg.cpp > CMakeFiles/draw_svg.dir/drawsvg.cpp.i

CMakeFiles/draw_svg.dir/drawsvg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw_svg.dir/drawsvg.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yujiex/Public/asst1_drawsvg/src/drawsvg.cpp -o CMakeFiles/draw_svg.dir/drawsvg.cpp.s

CMakeFiles/draw_svg.dir/drawsvg.cpp.o.requires:

.PHONY : CMakeFiles/draw_svg.dir/drawsvg.cpp.o.requires

CMakeFiles/draw_svg.dir/drawsvg.cpp.o.provides: CMakeFiles/draw_svg.dir/drawsvg.cpp.o.requires
	$(MAKE) -f CMakeFiles/draw_svg.dir/build.make CMakeFiles/draw_svg.dir/drawsvg.cpp.o.provides.build
.PHONY : CMakeFiles/draw_svg.dir/drawsvg.cpp.o.provides

CMakeFiles/draw_svg.dir/drawsvg.cpp.o.provides.build: CMakeFiles/draw_svg.dir/drawsvg.cpp.o


CMakeFiles/draw_svg.dir/main.cpp.o: CMakeFiles/draw_svg.dir/flags.make
CMakeFiles/draw_svg.dir/main.cpp.o: /home/yujiex/Public/asst1_drawsvg/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yujiex/Public/asst1_drawsvg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/draw_svg.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/draw_svg.dir/main.cpp.o -c /home/yujiex/Public/asst1_drawsvg/src/main.cpp

CMakeFiles/draw_svg.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw_svg.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yujiex/Public/asst1_drawsvg/src/main.cpp > CMakeFiles/draw_svg.dir/main.cpp.i

CMakeFiles/draw_svg.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw_svg.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yujiex/Public/asst1_drawsvg/src/main.cpp -o CMakeFiles/draw_svg.dir/main.cpp.s

CMakeFiles/draw_svg.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/draw_svg.dir/main.cpp.o.requires

CMakeFiles/draw_svg.dir/main.cpp.o.provides: CMakeFiles/draw_svg.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/draw_svg.dir/build.make CMakeFiles/draw_svg.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/draw_svg.dir/main.cpp.o.provides

CMakeFiles/draw_svg.dir/main.cpp.o.provides.build: CMakeFiles/draw_svg.dir/main.cpp.o


# Object files for target draw_svg
draw_svg_OBJECTS = \
"CMakeFiles/draw_svg.dir/svg.cpp.o" \
"CMakeFiles/draw_svg.dir/png.cpp.o" \
"CMakeFiles/draw_svg.dir/texture.cpp.o" \
"CMakeFiles/draw_svg.dir/viewport.cpp.o" \
"CMakeFiles/draw_svg.dir/triangulation.cpp.o" \
"CMakeFiles/draw_svg.dir/software_renderer.cpp.o" \
"CMakeFiles/draw_svg.dir/drawsvg.cpp.o" \
"CMakeFiles/draw_svg.dir/main.cpp.o"

# External object files for target draw_svg
draw_svg_EXTERNAL_OBJECTS =

draw_svg: CMakeFiles/draw_svg.dir/svg.cpp.o
draw_svg: CMakeFiles/draw_svg.dir/png.cpp.o
draw_svg: CMakeFiles/draw_svg.dir/texture.cpp.o
draw_svg: CMakeFiles/draw_svg.dir/viewport.cpp.o
draw_svg: CMakeFiles/draw_svg.dir/triangulation.cpp.o
draw_svg: CMakeFiles/draw_svg.dir/software_renderer.cpp.o
draw_svg: CMakeFiles/draw_svg.dir/drawsvg.cpp.o
draw_svg: CMakeFiles/draw_svg.dir/main.cpp.o
draw_svg: CMakeFiles/draw_svg.dir/build.make
draw_svg: /home/yujiex/Public/asst1_drawsvg/src/reference/libdrawsvgref.a
draw_svg: /usr/lib/x86_64-linux-gnu/libGLU.so
draw_svg: /usr/lib/x86_64-linux-gnu/libGL.so
draw_svg: /home/yujiex/Public/asst1_drawsvg/lib/libCMU462.a
draw_svg: /usr/lib/x86_64-linux-gnu/libfreetype.so
draw_svg: /home/yujiex/Public/asst1_drawsvg/lib/libglew.a
draw_svg: /home/yujiex/Public/asst1_drawsvg/lib/libglfw.a
draw_svg: /usr/lib/x86_64-linux-gnu/libX11.so
draw_svg: /usr/lib/x86_64-linux-gnu/libXext.so
draw_svg: CMakeFiles/draw_svg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yujiex/Public/asst1_drawsvg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable draw_svg"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/draw_svg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/draw_svg.dir/build: draw_svg

.PHONY : CMakeFiles/draw_svg.dir/build

CMakeFiles/draw_svg.dir/requires: CMakeFiles/draw_svg.dir/svg.cpp.o.requires
CMakeFiles/draw_svg.dir/requires: CMakeFiles/draw_svg.dir/png.cpp.o.requires
CMakeFiles/draw_svg.dir/requires: CMakeFiles/draw_svg.dir/texture.cpp.o.requires
CMakeFiles/draw_svg.dir/requires: CMakeFiles/draw_svg.dir/viewport.cpp.o.requires
CMakeFiles/draw_svg.dir/requires: CMakeFiles/draw_svg.dir/triangulation.cpp.o.requires
CMakeFiles/draw_svg.dir/requires: CMakeFiles/draw_svg.dir/software_renderer.cpp.o.requires
CMakeFiles/draw_svg.dir/requires: CMakeFiles/draw_svg.dir/drawsvg.cpp.o.requires
CMakeFiles/draw_svg.dir/requires: CMakeFiles/draw_svg.dir/main.cpp.o.requires

.PHONY : CMakeFiles/draw_svg.dir/requires

CMakeFiles/draw_svg.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/draw_svg.dir/cmake_clean.cmake
.PHONY : CMakeFiles/draw_svg.dir/clean

CMakeFiles/draw_svg.dir/depend:
	cd /home/yujiex/Public/asst1_drawsvg/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yujiex/Public/asst1_drawsvg/src /home/yujiex/Public/asst1_drawsvg/src /home/yujiex/Public/asst1_drawsvg/build /home/yujiex/Public/asst1_drawsvg/build /home/yujiex/Public/asst1_drawsvg/build/CMakeFiles/draw_svg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/draw_svg.dir/depend

