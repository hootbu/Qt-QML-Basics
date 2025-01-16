# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appqmlBasics_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appqmlBasics_autogen.dir/ParseCache.txt"
  "appqmlBasics_autogen"
  )
endif()
