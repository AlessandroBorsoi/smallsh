CC=gcc
CFLAGS=-Wall -Wextra -pedantic -std=c11 -g
smallsh: smallsh.o input.o
	$(CC) $(CFLAGS) -o smallsh input.o smallsh.o 
smallsh.o: smallsh.c smallsh.h
	$(CC) $(CFLAGS) -c smallsh.c
input.o: input.c smallsh.h
	$(CC) $(CFLAGS) -c input.c
clean:
	rm -f smallsh *.o
