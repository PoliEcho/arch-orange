SUBDIRS=emblems kali-logos
DESKTOP_BACKGROUND=kali-nova
LOGIN_BACKGROUND=kali-contours

build:
	bin/update-default-backgrounds $(DESKTOP_BACKGROUND) $(LOGIN_BACKGROUND)
	cmake -B kwin-theme-build -S KDE-themes/kwin5
	cmake --build kwin-theme-build
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(SUBDIR) build &&) true

clean:
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(SUBDIR) clean &&) true

install:
	$(foreach SUBDIR,$(SUBDIRS),$(MAKE) -C $(SUBDIR) install &&) true
	cmake --install kwin-build
