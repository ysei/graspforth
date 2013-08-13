CC=gcc -pipe
INCLUDE=
LIBS=


CFLAGS= -Wall -m32 $(INCLUDE) -O3 -funroll-loops -w  -DLINUX 

all: graspforth

graspforth: graspforth.o
	$(CC) $(CFLAGS) -o graspforth graspforth.o

clean:
	rm -rf graspforth *.o

# Dependencies

graspforth.o: graspforth.c

