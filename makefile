CC = cc
CFLAGS = --std=c89 -fpic -Wall -Wextra -O3
LDLIBS = -lm 
GTK = `pkg-config --cflags --libs gtk+-3.0 webkit2gtk-4.0`
minatsu: minatsu.c minatsu.h
	$(CC) minatsu.c $(CFLAGS) $(LDLIBS) $(GTK) -o minatsu 
clean:
	rm minatsu

.SILENT : clean
