cmake_minimum_required(VERSION 3.12)
project(ll_laba_5)

set(CMAKE_CXX_STANDARD 17)
set(Boost_INCLUDE_DIR /usr/include/)
set(Boost_LIBRARY_DIR /usr/lib/x86_64-linux-gnu/)
find_package(Boost COMPONENTS system filesystem REQUIRED)
include_directories(${Boost_INCLUDE_DIR})
link_directories(${Boost_LIBRARY_DIR})

add_executable( ll_laba_5 main.cpp)
target_link_libraries( ll_laba_5 ${Boost_LIBRARIES} )

