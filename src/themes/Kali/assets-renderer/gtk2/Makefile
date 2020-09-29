include ../../../Makefile.inc

SRC_FILE=assets.svg
ASSETS_DIR=assets

SRC_FILE_DARK=assets-dark.svg
ASSETS_DIR_DARK=assets-dark

MENU_TOOLBAR_DIR=menubar-toolbar

ASSETS=$(shell xargs < assets.txt)
MENU_ASSETS=$(shell xargs < menu_assets.txt)
DARK_MENU_EXTRA_ASSETS=button button-hover button-active button-insensitive
THEMES_DIR=../../../../../share/themes/

.PHONY: build clean

build: $(SRC_FILE) $(SRC_FILE_DARK)
	mkdir -p $(ASSETS_DIR) $(ASSETS_DIR_DARK) $(MENU_TOOLBAR_DIR)
	for i in $(ASSETS) $(MENU_ASSETS) ; \
	do \
		echo ; \
		echo Rendering $(ASSETS_DIR)/$$i.png ; \
		$(INKSCAPE) --export-id=$$i \
		          --export-id-only \
		          --export-png=$(ASSETS_DIR)/$$i.png $(SRC_FILE) > /dev/null 2>&1 \
		&& $(OPTIPNG) $(ASSETS_DIR)/$$i.png ; \
		echo ; \
		echo Rendering $(ASSETS_DIR_DARK)/$$i.png ; \
		$(INKSCAPE) --export-id=$$i \
		          --export-id-only \
		          --export-png=$(ASSETS_DIR_DARK)/$$i.png $(SRC_FILE_DARK) > /dev/null 2>&1 \
		&& $(OPTIPNG) $(ASSETS_DIR_DARK)/$$i.png ; \
	done
	$(foreach ASSET, $(MENU_ASSETS), \
	  cp $(ASSETS_DIR)/$(ASSET).png $(MENU_TOOLBAR_DIR)/$(ASSET).png && \
	  cp $(ASSETS_DIR_DARK)/$(ASSET).png $(MENU_TOOLBAR_DIR)/$(ASSET)-dark.png &&) true
	$(foreach ASSET, $(DARK_MENU_EXTRA_ASSETS), \
	  cp $(ASSETS_DIR_DARK)/$(ASSET).png $(MENU_TOOLBAR_DIR)/$(ASSET).png &&) true
	mkdir -p $(THEMES_DIR)Kali-Light/gtk-2.0/assets/
	cp assets/* $(THEMES_DIR)Kali-Light/gtk-2.0/assets/
	mkdir -p $(THEMES_DIR)Kali-Light/gtk-2.0/menubar-toolbar/
	cp menubar-toolbar/* $(THEMES_DIR)Kali-Light/gtk-2.0/menubar-toolbar/
	mkdir -p $(THEMES_DIR)Kali-Dark/gtk-2.0/assets/
	cp assets-dark/* $(THEMES_DIR)Kali-Dark/gtk-2.0/assets/
	mkdir -p $(THEMES_DIR)Kali-Dark/gtk-2.0/menubar-toolbar/
	cp menubar-toolbar/* $(THEMES_DIR)Kali-Dark/gtk-2.0/menubar-toolbar/
	
clean:
	-rm -r $(ASSETS_DIR) $(ASSETS_DIR_DARK) $(MENU_TOOLBAR_DIR)
