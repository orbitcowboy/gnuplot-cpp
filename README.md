# gnuplot-cpp
C++ interface to Gnuplot via POSIX pipes

This project was hosted on [google code](https://code.google.com/archive/p/gnuplot-cpp/). Since google dropped google code, this project was moved to github.

<a href="https://scan.coverity.com/projects/988">
  <img alt="Coverity Scan Build Status"
       src="https://scan.coverity.com/projects/988/badge.svg"/>
</a>
<a href="https://lgtm.com/projects/g/orbitcowboy/gnuplot-cpp/alerts/"><img alt="Total alerts" src="https://img.shields.io/lgtm/alerts/g/orbitcowboy/gnuplot-cpp.svg?logo=lgtm&logoWidth=18"/></a>

# Use with CMake Projects

To use this interface within your CMake projects, you can use the gnuplot-cppConfig.cmake. Just make sure, that CMake is able to find the gnuplot-cpp directory, either by moving it to the CMake search path, or setting graybat-cpp_dir.

To include it into your project just add:
```
find_package(gnuplot-cpp REQUIRED)
include_directories(${gnuplot-cpp_INCLUDE_DIRS})
```
