SUBDIRS=emblems kali-logos xfce-panel-profiles
DESKTOP_BACKGROUND=kali-ferrofluid.jpg
LOGIN_BACKGROUND=kali-aqua.jpg

build:
	bin/update-default-backgrounds $(DESKTOP_BACKGROUND) $(LOGIN_BACKGROUND)
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(SUBDIR) build &&) true

clean:
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(SUBDIR) clean &&) true

install:
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(SUBDIR) install &&) true
