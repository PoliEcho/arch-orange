include ../../Makefile.inc

THEMES_DIR=../../../../share/themes/
TARGETS=$(patsubst %.scss, %.css, $(wildcard *.scss))

.PHONY: build clean

build: clean
	$(MAKE) $(TARGETS)
	mkdir -p $(THEMES_DIR)Kali$(VARIANT)-Light/gtk-3.0/
	mkdir -p $(THEMES_DIR)Kali$(VARIANT)-Dark/gtk-3.0/
	mkdir -p $(THEMES_DIR)Kali$(VARIANT)-Light/gtk-4.0/
	mkdir -p $(THEMES_DIR)Kali$(VARIANT)-Dark/gtk-4.0/
	mkdir -p $(THEMES_DIR)Kali$(VARIANT)-Light/gnome-shell/
	mkdir -p $(THEMES_DIR)Kali$(VARIANT)-Dark/gnome-shell/
	
	cp gtk3.css $(THEMES_DIR)Kali$(VARIANT)-Light/gtk-3.0/gtk.css
	cp gtk3-dark.css $(THEMES_DIR)Kali$(VARIANT)-Light/gtk-3.0/gtk-dark.css
	cp gtk3-dark.css $(THEMES_DIR)Kali$(VARIANT)-Dark/gtk-3.0/gtk.css
	cp gtk4.css $(THEMES_DIR)Kali$(VARIANT)-Light/gtk-4.0/gtk.css
	cp gtk4-dark.css $(THEMES_DIR)Kali$(VARIANT)-Light/gtk-4.0/gtk-dark.css
	cp gtk4-dark.css $(THEMES_DIR)Kali$(VARIANT)-Dark/gtk-4.0/gtk.css
	cp gnome-shell.css $(THEMES_DIR)Kali$(VARIANT)-Light/gnome-shell/gnome-shell.css
	cp gnome-shell-dark.css $(THEMES_DIR)Kali$(VARIANT)-Dark/gnome-shell/gnome-shell.css


gnome%.css: gnome%.scss
	$(SCSS) $< > $@

%.css: %.scss
	$(SCSS) $< > $@
	cat $(wildcard gtk-applications-css/**/*.css) >> $@

clean:
	-rm *.css
