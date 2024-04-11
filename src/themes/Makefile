THEME_SRC=Kali-Purple/
SUBDIRS?=$(foreach SUBDIR,gtk2 gtk3 xfwm4,assets-renderer/$(SUBDIR)) sass

.PHONY: build $(SUBDIRS) clean

build: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C Kali/$@ build

clean:
	$(foreach THEME_SRC,Kali Kali-Purple,$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(THEME_SRC)/$(SUBDIR) clean &&)) true
