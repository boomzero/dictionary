# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/chenqi/CLionProjects/dic/cmake-build-debug/_deps/zlib-src"
  "/Users/chenqi/CLionProjects/dic/cmake-build-debug/_deps/zlib-build"
  "/Users/chenqi/CLionProjects/dic/cmake-build-debug/_deps/zlib-subbuild/zlib-populate-prefix"
  "/Users/chenqi/CLionProjects/dic/cmake-build-debug/_deps/zlib-subbuild/zlib-populate-prefix/tmp"
  "/Users/chenqi/CLionProjects/dic/cmake-build-debug/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp"
  "/Users/chenqi/CLionProjects/dic/cmake-build-debug/_deps/zlib-subbuild/zlib-populate-prefix/src"
  "/Users/chenqi/CLionProjects/dic/cmake-build-debug/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/chenqi/CLionProjects/dic/cmake-build-debug/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/chenqi/CLionProjects/dic/cmake-build-debug/_deps/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
