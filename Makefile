SUBDIRS=emblems kali-logos
DESKTOP_BACKGROUND=kali-geometric
LOGIN_BACKGROUND=kali-light-strips

build:
	bin/update-default-backgrounds $(DESKTOP_BACKGROUND) $(LOGIN_BACKGROUND)
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(SUBDIR) build &&) true

clean:
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(SUBDIR) clean &&) true

install:
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(SUBDIR) install &&) true
