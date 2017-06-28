cmake_minimum_required(VERSION 3.3.0)
project("gnuplot-cpp")

message(STATUS "Found gnuplot:${gnuplot-cpp_DIR}")

set(gnuplot-cpp_INCLUDE_DIRS ${gnuplot-cpp_INCLUDE_DIRS} "${gnuplot-cpp_DIR}")
