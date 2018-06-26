#!/bin/bash
# This script runs the PVS Studio analyzer
# on gnuplot-cpp
#
# Usage:
# sh runPVS_Studio.sh
# 
# After the script has finished, take a look at p.tasks. 
# This file contains the checking results. 
#
# References:
#  - How to run PVS-Studio on Linux: https://www.viva64.com/en/m/0036/#ID0E3DAC
#  - How to use PVS-Studio for Free: https://www.viva64.com/en/b/0457/
#  - Download PVS-Studio for Linux:  https://www.viva64.com/en/pvs-studio-download-linux/
#

make clean    # Cleanup previous build
rm -fR result # Remove results
rm -f p.log   # Remove log file
pvs-studio-analyzer trace -- make -j3 CFLAGS=""
pvs-studio-analyzer analyze -o p.log
plog-converter -a GA:1,2,3 -t fullhtml -o result p.log
xdg-open result/index.html
