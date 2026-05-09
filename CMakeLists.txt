cmake_minimum_required(VERSION 4.1.1)

project(
  PROJECT_NAME
  VERSION 0.0.1
  DESCRIPTION "PROJECT_DESCRIPTION")

include(FetchContent)

FetchContent_Declare(
  CPM
  GIT_REPOSITORY https://github.com/cpm-cmake/CPM.cmake
  GIT_TAG v0.42.1)
FetchContent_MakeAvailable(CPM)
include(${cpm_SOURCE_DIR}/cmake/CPM.cmake)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
option(myproject_ENABLE_HARDENING "Enable hardening" ON)
option(myproject_USE_SANITIZER "Use AddressSanitizer" ON)

include(cmake/project-warnings.cmake)
include(cmake/project-options.cmake)

if(PROJECT_IS_TOP_LEVEL)
  set(CMAKE_COMPILE_WARNING_AS_ERROR ON)
endif()

add_subdirectory(src)
add_subdirectory(app)
