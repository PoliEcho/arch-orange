SCSS=scss --no-cache --quiet --sourcemap=none
THEMES_DIR=../../../../share/themes/

.PHONY: install clean

build:
	for scss in gtk*.scss ; \
	do \
		echo ; \
		echo Generating $${scss%.scss}.css ; \
		$(SCSS) $$scss > $${scss%.scss}.css ; \
	done
	
	mkdir -p $(THEMES_DIR)/Kali-Light/gtk-3.0/applications
	mkdir -p $(THEMES_DIR)/Kali-Dark/gtk-3.0/applications
	
	cp -r applications/* $(THEMES_DIR)/Kali-Light/gtk-3.0/applications
	cp -r applications/* $(THEMES_DIR)/Kali-Dark/gtk-3.0/applications
	
	find $(THEMES_DIR)/Kali-*/gtk-3.0/applications \
			! \( -type d -or -name "*.css" -or -name "*.scss" \) \
			-exec rm {} \;
	
	cp gtk.css $(THEMES_DIR)/Kali-Light/gtk-3.0/gtk.css
	cp gtk-dark.css $(THEMES_DIR)/Kali-Light/gtk-3.0/gtk-dark.css
	cp gtk-dark.css $(THEMES_DIR)/Kali-Dark/gtk-3.0/gtk.css

clean:
	-rm *.css
