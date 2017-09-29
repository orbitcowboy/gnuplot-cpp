CFLAGS = -ggdb -Wall -Wextra -pedantic -Wconversion -Wsign-conversion -O3
DEFINES = -DDEBUGGA
INCLUDES = 
LIBS = -lstdc++
EXAMPLE = example.o
CC=g++

.cc.o:
	$(CC) -c $(CFLAGS) $(DEFINES) $(INCLUDES) $<

all:  example

gnuplot_i.o:	gnuplot_i.hpp
example.o:	example.cc

example: $(EXAMPLE)
	$(CC) -o $@ $(CFLAGS) $(EXAMPLE) $(LIBS)

clean: 
	rm -f $(EXAMPLE) example
	rm -f *.orig
	
style:
	/usr/bin/find . -regextype "posix-extended" -iregex '.*\.(c|cc|cxx|h|hh|hpp|cpp)' -type f -exec astyle --style=ansi -S -N -w -Y -p -C -c -j {} \;	
