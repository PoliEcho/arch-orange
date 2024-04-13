SUBDIRS?=$(foreach SUBDIR,gtk2 gtk3 xfwm4,assets-renderer/$(SUBDIR)) sass

.PHONY: build $(SUBDIRS) clean

build: $(SUBDIRS)
	cp ./Kali/indexes/index-dark.theme ../../share/themes/Kaliish-orange-Dark/index.theme
	cp ./Kali/indexes/index-light.theme ../../share/themes/Kaliish-orange-Light/index.theme
	cp -r ./Kali/indexes/universal/* ../../share/themes/Kaliish-orange-Dark/
	cp -r ./Kali/indexes/universal/* ../../share/themes/Kaliish-orange-Light/
	cp -r ./Kali/indexes/universal/xfwm4 ../../share/themes/Kaliish-orange-Dark-xHiDPI/
	cp -r ./Kali/indexes/universal/xfwm4 ../../share/themes/Kaliish-orange-Light-xHiDPI/

$(SUBDIRS):
	$(MAKE) -C Kali/$@ build

clean:
	$(foreach THEME_SRC,Kali,$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(THEME_SRC)/$(SUBDIR) clean &&)) true
