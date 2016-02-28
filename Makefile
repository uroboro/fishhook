
CC := clang
CFLAGS += -c

OBJECTS += fishhook.o test.o

all: test

%.o: %.c
	$(CC) $(CFLAGS) $^ -o $@

test1: $(OBJECTS)
	$(CC) $^ -o $@

test: test1
	./$<

clean:
	rm -rf $(OBJECTS) test1
