# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/pi/LicensePlateRecognizer/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/LicensePlateRecognizer/src

# Include any dependencies generated for this target.
include CMakeFiles/LPRecogLib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LPRecogLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LPRecogLib.dir/flags.make

CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o: LPRecogLib.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o -c /home/pi/LicensePlateRecognizer/src/LPRecogLib.cpp

CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/LPRecogLib.cpp > CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.i

CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/LPRecogLib.cpp -o CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.s

CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o.requires

CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o.provides: CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o.provides

CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o

CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o: LPRecog.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o -c /home/pi/LicensePlateRecognizer/src/LPRecog.cpp

CMakeFiles/LPRecogLib.dir/LPRecog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/LPRecog.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/LPRecog.cpp > CMakeFiles/LPRecogLib.dir/LPRecog.cpp.i

CMakeFiles/LPRecogLib.dir/LPRecog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/LPRecog.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/LPRecog.cpp -o CMakeFiles/LPRecogLib.dir/LPRecog.cpp.s

CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o.requires

CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o.provides: CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o.provides

CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o

CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o: CharRecognition.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o -c /home/pi/LicensePlateRecognizer/src/CharRecognition.cpp

CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/CharRecognition.cpp > CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.i

CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/CharRecognition.cpp -o CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.s

CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o.requires

CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o.provides: CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o.provides

CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o

CMakeFiles/LPRecogLib.dir/Exception.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/Exception.cpp.o: Exception.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/Exception.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/Exception.cpp.o -c /home/pi/LicensePlateRecognizer/src/Exception.cpp

CMakeFiles/LPRecogLib.dir/Exception.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/Exception.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/Exception.cpp > CMakeFiles/LPRecogLib.dir/Exception.cpp.i

CMakeFiles/LPRecogLib.dir/Exception.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/Exception.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/Exception.cpp -o CMakeFiles/LPRecogLib.dir/Exception.cpp.s

CMakeFiles/LPRecogLib.dir/Exception.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/Exception.cpp.o.requires

CMakeFiles/LPRecogLib.dir/Exception.cpp.o.provides: CMakeFiles/LPRecogLib.dir/Exception.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/Exception.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/Exception.cpp.o.provides

CMakeFiles/LPRecogLib.dir/Exception.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/Exception.cpp.o

CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o: LicensePlateInfo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o -c /home/pi/LicensePlateRecognizer/src/LicensePlateInfo.cpp

CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/LicensePlateInfo.cpp > CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.i

CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/LicensePlateInfo.cpp -o CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.s

CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o.requires

CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o.provides: CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o.provides

CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o

CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o: PlateDetection.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o -c /home/pi/LicensePlateRecognizer/src/PlateDetection.cpp

CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/PlateDetection.cpp > CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.i

CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/PlateDetection.cpp -o CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.s

CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o.requires

CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o.provides: CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o.provides

CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o

CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o: PlateSegmentation.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o -c /home/pi/LicensePlateRecognizer/src/PlateSegmentation.cpp

CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/PlateSegmentation.cpp > CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.i

CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/PlateSegmentation.cpp -o CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.s

CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o.requires

CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o.provides: CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o.provides

CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o

CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o: common/LocalContrastNormalization.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o -c /home/pi/LicensePlateRecognizer/src/common/LocalContrastNormalization.cpp

CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/common/LocalContrastNormalization.cpp > CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.i

CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/common/LocalContrastNormalization.cpp -o CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.s

CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o.requires

CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o.provides: CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o.provides

CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o

CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o: common/RectFunctions.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o -c /home/pi/LicensePlateRecognizer/src/common/RectFunctions.cpp

CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/common/RectFunctions.cpp > CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.i

CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/common/RectFunctions.cpp -o CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.s

CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o.requires

CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o.provides: CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o.provides

CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o

CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o: HMAX/HMAX.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o -c /home/pi/LicensePlateRecognizer/src/HMAX/HMAX.cpp

CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/HMAX/HMAX.cpp > CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.i

CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/HMAX/HMAX.cpp -o CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.s

CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o.requires

CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o.provides: CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o.provides

CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o

CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o: HMAX/S1.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o -c /home/pi/LicensePlateRecognizer/src/HMAX/S1.cpp

CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/HMAX/S1.cpp > CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.i

CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/HMAX/S1.cpp -o CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.s

CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o.requires

CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o.provides: CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o.provides

CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o

CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o: HMAX/GaborS1.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o -c /home/pi/LicensePlateRecognizer/src/HMAX/GaborS1.cpp

CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/HMAX/GaborS1.cpp > CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.i

CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/HMAX/GaborS1.cpp -o CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.s

CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o.requires

CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o.provides: CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o.provides

CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o

CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o: HMAX/C1.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o -c /home/pi/LicensePlateRecognizer/src/HMAX/C1.cpp

CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/HMAX/C1.cpp > CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.i

CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/HMAX/C1.cpp -o CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.s

CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o.requires

CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o.provides: CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o.provides

CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o

CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o: HMAX/commonFunctions.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_14)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o -c /home/pi/LicensePlateRecognizer/src/HMAX/commonFunctions.cpp

CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/HMAX/commonFunctions.cpp > CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.i

CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/HMAX/commonFunctions.cpp -o CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.s

CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o.requires

CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o.provides: CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o.provides

CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o

CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o: shape/binary_func.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_15)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o -c /home/pi/LicensePlateRecognizer/src/shape/binary_func.cpp

CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/shape/binary_func.cpp > CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.i

CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/shape/binary_func.cpp -o CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.s

CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o.requires

CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o.provides: CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o.provides

CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o

CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o: CMakeFiles/LPRecogLib.dir/flags.make
CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o: shape/shape_predictor.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/LicensePlateRecognizer/src/CMakeFiles $(CMAKE_PROGRESS_16)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o -c /home/pi/LicensePlateRecognizer/src/shape/shape_predictor.cpp

CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/LicensePlateRecognizer/src/shape/shape_predictor.cpp > CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.i

CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/LicensePlateRecognizer/src/shape/shape_predictor.cpp -o CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.s

CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o.requires:
.PHONY : CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o.requires

CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o.provides: CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o.requires
	$(MAKE) -f CMakeFiles/LPRecogLib.dir/build.make CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o.provides.build
.PHONY : CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o.provides

CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o.provides.build: CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o

# Object files for target LPRecogLib
LPRecogLib_OBJECTS = \
"CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o" \
"CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o" \
"CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o" \
"CMakeFiles/LPRecogLib.dir/Exception.cpp.o" \
"CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o" \
"CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o" \
"CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o" \
"CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o" \
"CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o" \
"CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o" \
"CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o" \
"CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o" \
"CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o" \
"CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o" \
"CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o" \
"CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o"

# External object files for target LPRecogLib
LPRecogLib_EXTERNAL_OBJECTS =

libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/Exception.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/build.make
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_calib3d.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_core.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_features2d.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_flann.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_highgui.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_imgcodecs.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_imgproc.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_ml.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_objdetect.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_photo.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_shape.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_stitching.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_superres.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_video.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_videoio.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_videostab.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_objdetect.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_calib3d.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_features2d.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_flann.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_highgui.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_ml.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_photo.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_video.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_videoio.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_imgcodecs.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_imgproc.so.3.1.0
libLPRecogLib.so.2.0.0: /opt/scorer/lib/libopencv_core.so.3.1.0
libLPRecogLib.so.2.0.0: CMakeFiles/LPRecogLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libLPRecogLib.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LPRecogLib.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library libLPRecogLib.so.2.0.0 libLPRecogLib.so.1 libLPRecogLib.so

libLPRecogLib.so.1: libLPRecogLib.so.2.0.0

libLPRecogLib.so: libLPRecogLib.so.2.0.0

# Rule to build all files generated by this target.
CMakeFiles/LPRecogLib.dir/build: libLPRecogLib.so
.PHONY : CMakeFiles/LPRecogLib.dir/build

CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/LPRecogLib.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/LPRecog.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/CharRecognition.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/Exception.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/LicensePlateInfo.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/PlateDetection.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/PlateSegmentation.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/common/LocalContrastNormalization.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/common/RectFunctions.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/HMAX/HMAX.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/HMAX/S1.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/HMAX/GaborS1.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/HMAX/C1.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/HMAX/commonFunctions.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/shape/binary_func.cpp.o.requires
CMakeFiles/LPRecogLib.dir/requires: CMakeFiles/LPRecogLib.dir/shape/shape_predictor.cpp.o.requires
.PHONY : CMakeFiles/LPRecogLib.dir/requires

CMakeFiles/LPRecogLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LPRecogLib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LPRecogLib.dir/clean

CMakeFiles/LPRecogLib.dir/depend:
	cd /home/pi/LicensePlateRecognizer/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/LicensePlateRecognizer/src /home/pi/LicensePlateRecognizer/src /home/pi/LicensePlateRecognizer/src /home/pi/LicensePlateRecognizer/src /home/pi/LicensePlateRecognizer/src/CMakeFiles/LPRecogLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LPRecogLib.dir/depend
