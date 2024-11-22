cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(ffi_lib VERSION 1.0.0 LANGUAGES C)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

add_library(ffi_lib SHARED ffi.c md5.c ffi.def)
add_executable(ffi_test ffi.c md5.c)

set_target_properties(ffi_lib PROPERTIES
    PUBLIC_HEADER ffi.h
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
    OUTPUT_NAME "ffi"
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "Hex_Identity_ID_Goes_Here"
)
