default: run

S ?= src
INC ?= ./include

CFLAGS=-g

build: main.c $(S)/adapter.c $(S)/tokenizer.c
	gcc $(CFLAGS) main.c $(S)/tokenizer.c $(S)/adapter.c $(S)/fs.c -o minifs -I$(INC)

run: build
	./minifs

clean: minifs
	rm minifs

.PHONY: run
