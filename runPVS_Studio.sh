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
rm -f p.log   # Remove intermediate log file
rm -f p.tasks # Remove task file
pvs-studio-analyzer trace -- make
pvs-studio-analyzer analyze -o p.log
plog-converter -a GA:1,2 -t tasklist -o p.tasks p.log
