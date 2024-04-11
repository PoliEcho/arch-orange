SUBDIRS?=$(foreach SUBDIR,gtk2 gtk3 xfwm4,assets-renderer/$(SUBDIR)) sass

.PHONY: build $(SUBDIRS) clean

build: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C Kali/$@ build

clean:
	$(foreach THEME_SRC,Kali,$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(THEME_SRC)/$(SUBDIR) clean &&)) true
