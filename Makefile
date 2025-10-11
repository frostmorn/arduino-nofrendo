CC = gcc
CFLAGS = -m64 -Werror=implicit-function-declaration  -fstack-protector-all -fstack-protector-strong -fstack-check -Wall -lm -lSDL -O0 -g3  -I $(shell realpath src)
SRC = $(shell find src -name "*.c" )  
OBJ = $(SRC:.c=.o)

all: linux_nofrendo

linux_nofrendo: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) linux_nofrendo

