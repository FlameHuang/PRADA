CFLAGS = -O3 -g
CFLAGS	+= -I/usr/local/include -L/usr/local/lib
CC = gcc

genregexp : genregexp.c
	$(CC) $(CFLAGS) -lpcre -o genregexp genregexp.c

clean: 
	rm genregexp
