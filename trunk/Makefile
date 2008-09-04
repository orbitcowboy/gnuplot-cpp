CFLAGS = -ggdb
DEFINES = -DDEBUGGA
INCLUDES = 
LIBS = -lstdc++
OBJ = gnuplot_i.o
EXAMPLE = example.o gnuplot_i.o
CC=g++

.cc.o:
	$(CC) -c $(CFLAGS) $(DEFINES) $(INCLUDES) $<

all::	example

gnuplot_i.o:	gnuplot_i.cc gnuplot_i.hpp
example.o:	example.cc gnuplot_i.cc

example: $(EXAMPLE)
	$(CC) -o $@ $(CFLAGS) $(EXAMPLE) $(LIBS)

clean: 
	rm -f $(EXAMPLE) example
