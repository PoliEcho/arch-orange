dir = usr/share/desktop-base/kali-theme/grub

files = \
	grub-4x3.png \
	grub-16x9.png

build: $(files)

clean:
	rm -f grub-4x3.png grub-16x9.png

install:
	# Do nothing, installed by top-level makefile into desktop-base
	# directory

grub-4x3.png: grub-4x3.svg
	rsvg-convert $< > $@

grub-16x9.png: grub-16x9.svg
	rsvg-convert $< > $@

include ../../Makefile.inc
