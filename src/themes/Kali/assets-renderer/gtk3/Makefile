include ../../../Makefile.inc

SRC_FILE=assets.svg
ASSETS_DIR=assets
SYMBOLIC_ASSETS_DIR=symbolic
INDEX=assets.txt
THEMES_DIR=../../../../../share/themes/

.PHONY: build clean

build: $(SRC_FILE)
	mkdir -p $(ASSETS_DIR)
	cp $(SYMBOLIC_ASSETS_DIR)/* $(ASSETS_DIR)
	for i in $$(xargs < $(INDEX)) ; \
	do \
		echo ; \
		echo Rendering $(ASSETS_DIR)/$$i.png ; \
		$(INKSCAPE) --export-id=$$i \
		            --export-id-only \
		            --export-png=$(ASSETS_DIR)/$$i.png $(SRC_FILE) > /dev/null 2>&1 \
		&& $(OPTIPNG) $(ASSETS_DIR)/$$i.png ; \
		echo ; \
		echo Rendering $(ASSETS_DIR)/$$i@2.png ; \
		$(INKSCAPE) --export-id=$$i \
		            --export-dpi=180 \
		            --export-id-only \
		            --export-png=$(ASSETS_DIR)/$$i@2.png $(SRC_FILE) > /dev/null 2>&1 \
		&& $(OPTIPNG) $(ASSETS_DIR)/$$i@2.png ; \
	done
	mkdir -p $(THEMES_DIR)Kali$(VARIANT)-Dark/gtk-3.0/assets/
	mkdir -p $(THEMES_DIR)Kali$(VARIANT)-Dark/gtk-4.0/
	mkdir -p $(THEMES_DIR)Kali$(VARIANT)-Light/gtk-3.0/
	mkdir -p $(THEMES_DIR)Kali$(VARIANT)-Light/gtk-4.0/
	cp assets/* $(THEMES_DIR)Kali$(VARIANT)-Dark/gtk-3.0/assets/
	ln -nrsvf $(THEMES_DIR)Kali$(VARIANT)-Dark/gtk-3.0/assets/ $(THEMES_DIR)Kali-Light/gtk-3.0/assets
	ln -nrsvf $(THEMES_DIR)Kali$(VARIANT)-Dark/gtk-3.0/assets/ $(THEMES_DIR)Kali-Dark/gtk-4.0/assets
	ln -nrsvf $(THEMES_DIR)Kali$(VARIANT)-Dark/gtk-3.0/assets/ $(THEMES_DIR)Kali-Light/gtk-4.0/assets

clean:
	-rm -r $(ASSETS_DIR)
