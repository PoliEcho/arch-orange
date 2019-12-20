THEME_SRC=Kali/
SUBDIRS=$(foreach SUBDIR,gtk2 gtk3 xfwm4,assets-renderer/$(SUBDIR)) sass

.PHONY: build clean

build:
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(THEME_SRC)$(SUBDIR) build &&) true

clean:
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(THEME_SRC)$(SUBDIR) clean &&) true
