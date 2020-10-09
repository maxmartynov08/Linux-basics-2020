# print your code here

SHELL := /bin/bash

all: build_fast build_slow

build_fast: src/main_fast.cpp
	g++ -std=c++17 src/main_fast.cpp src/fast.cpp -o fast

build_slow: src/main_slow.cpp
	g++ -std=c++17 src/main_slow.cpp src/slow.cpp -o slow

run_fast: build_fast src/generator.sh
	./fast `src/generator.sh`

run_slow: build_slow src/generator.sh
	./slow `src/generator.sh`

time: $(ARGS)
	time $$(src/generator.sh)

clean:
	rm fast slow

.PHONY: all run_fast run_slow time clean