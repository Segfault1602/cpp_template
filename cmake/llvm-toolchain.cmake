include_guard(GLOBAL)

set(CMAKE_CXX_COMPILER "clang++")
set(CMAKE_C_COMPILER "clang")

# For openmp support on Windows
if(WIN32)
  set(CMAKE_SYSTEM_LIBRARY_PATH "$ENV{ProgramFiles}/LLVM/lib")
endif()

include($ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake)
