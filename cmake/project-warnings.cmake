if(MSVC)
  set(MYPROJECT_WARNINGS_CXX /W3 /permissive-)
elseif(CMAKE_CXX_COMPILER_ID MATCHES ".*Clang")
  set(MYPROJECT_WARNINGS_CXX
      -Wall
      -Wextra
      -Wpedantic
      -Wno-sign-compare
      -Wno-language-extension-token
      -Wunsafe-buffer-usage)

endif()

add_library(myproject_warnings INTERFACE)
add_library(myproject::myproject_warnings ALIAS myproject_warnings)
target_compile_options(myproject_warnings INTERFACE ${MYPROJECT_WARNINGS_CXX})
