GBYTES ?= 1

all: bitflip

# e.g. "make GBYTES=4"
bitflip: bitflip.c
	$(CC) -O3 -Wall -W -pedantic -DGBYTES=$(GBYTES) -std=c99 -o bitflip bitflip.c

clean:
	rm bitflip
