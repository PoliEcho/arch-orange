include ../../Makefile.inc

THEMES_DIR=../../../../share/themes/

.PHONY: build clean

build: $(patsubst %.scss, %.css, $(wildcard *.scss))
	mkdir -p $(THEMES_DIR)Kali-Light/gtk-3.0/
	mkdir -p $(THEMES_DIR)Kali-Dark/gtk-3.0/
	mkdir -p $(THEMES_DIR)Kali-Light/gtk-4.0/
	mkdir -p $(THEMES_DIR)Kali-Dark/gtk-4.0/
	mkdir -p $(THEMES_DIR)Kali-Light/gnome-shell/
	mkdir -p $(THEMES_DIR)Kali-Dark/gnome-shell/
	
	cp gtk-3.css $(THEMES_DIR)Kali-Light/gtk-3.0/gtk.css
	cp gtk-3-dark.css $(THEMES_DIR)Kali-Light/gtk-3.0/gtk-dark.css
	cp gtk-3-dark.css $(THEMES_DIR)Kali-Dark/gtk-3.0/gtk.css
	cp gtk-4.css $(THEMES_DIR)Kali-Light/gtk-4.0/gtk.css
	cp gtk-4-dark.css $(THEMES_DIR)Kali-Light/gtk-4.0/gtk-dark.css
	cp gtk-4-dark.css $(THEMES_DIR)Kali-Dark/gtk-4.0/gtk.css
	cp gnome-shell.css $(THEMES_DIR)Kali-Light/gnome-shell/gnome-shell.css
	cp gnome-shell-dark.css $(THEMES_DIR)Kali-Dark/gnome-shell/gnome-shell.css


gnome%.css: gnome%.scss
	$(SCSS) $< > $@

%.css: %.scss
	$(SCSS) $< > $@
	cat $(wildcard gtk-applications-css/**/*.css) >> $@

clean:
	-rm *.css
