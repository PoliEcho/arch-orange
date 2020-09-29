include ../../../Makefile.inc

THEMES_DIR=../../../../share/themes/

.PHONY: build clean

build: $(patsubst %.scss, %.css, $(wildcard *.scss))
	mkdir -p $(THEMES_DIR)Kali-Light/gtk-3.0/applications
	mkdir -p $(THEMES_DIR)Kali-Dark/gtk-3.0/applications
	mkdir -p $(THEMES_DIR)Kali-Light/gnome-shell
	mkdir -p $(THEMES_DIR)Kali-Dark/gnome-shell
	
	cp -r gtk-sass/applications/* $(THEMES_DIR)Kali-Light/gtk-3.0/applications
	cp -r gtk-sass/applications/* $(THEMES_DIR)Kali-Dark/gtk-3.0/applications
	
	find $(THEMES_DIR)Kali-*/gtk-3.0/applications \
			! \( -type d -or -name "*.css" -or -name "*.scss" \) \
			-exec rm {} \;
	
	cp gtk.css $(THEMES_DIR)Kali-Light/gtk-3.0/gtk.css
	cp gtk-dark.css $(THEMES_DIR)Kali-Light/gtk-3.0/gtk-dark.css
	cp gtk-dark.css $(THEMES_DIR)Kali-Dark/gtk-3.0/gtk.css
	cp gnome-shell.css $(THEMES_DIR)Kali-Light/gnome-shell/gnome-shell.css
	cp gnome-shell-dark.css $(THEMES_DIR)Kali-Dark/gnome-shell/gnome-shell.css

%.css: %.scss
	$(SCSS) $< > $@

clean:
	-rm *.css
