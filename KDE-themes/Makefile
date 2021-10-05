.PHONY: build clean install

clean:
	rm -rf build

build:
	cmake -B build
	cmake --build build

install:
	DESTDIR=$(DESTDIR) cmake --install build

include ../Makefile.inc
