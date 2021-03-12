cmake_minimum_required(VERSION 3.10)
project(minifs C)

set(CMAKE_C_STANDARD 99)

set(CMAKE_C_FLAGS -fsanitize=address,undefined)

add_executable(minifs main.c src/fs.c src/tokenizer.c src/adapter.c)

include_directories(include)