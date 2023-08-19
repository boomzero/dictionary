cmake_minimum_required(VERSION 3.23)
project(dic)
set(CMAKE_CXX_STANDARD 17)
include(FetchContent)
FetchContent_Declare(cpr GIT_REPOSITORY https://github.com/libcpr/cpr.git
        GIT_TAG 49cdb0764e09d9d33085d0191216388851e76066) # The commit hash for 1.9.0. Replace with the latest from: https://github.com/libcpr/cpr/releases
FetchContent_MakeAvailable(cpr)
add_executable(dic main.cpp json.h)
target_link_libraries(dic PRIVATE cpr::cpr)
