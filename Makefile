GRUB_THEMES=kali-theme/grub
DEFAULT_BACKGROUND=desktop-background
VENDOR_LOGOS=kali-logos

PIXMAPS=$(wildcard pixmaps/*.png)
DESKTOPFILES=$(wildcard *.desktop)

.PHONY: all clean install install-local
all: build-grub build-emblems build-logos
clean: clean-grub clean-emblems clean-logos

.PHONY: build-grub clean-grub install-grub
build-grub clean-grub install-grub:
	@target=`echo $@ | sed s/-grub//`; \
	for grub_theme in $(GRUB_THEMES) ; do \
		if [ -f $$grub_theme/Makefile ] ; then \
			$(MAKE) $$target -C $$grub_theme || exit 1; \
		fi \
	done

.PHONY: build-emblems clean-emblems install-emblems
build-emblems clean-emblems install-emblems:
	@target=`echo $@ | sed s/-emblems//`; \
	$(MAKE) $$target -C emblems-debian || exit 1;

.PHONY: build-logos clean-logos install-logos
build-logos clean-logos install-logos:
	@target=`echo $@ | sed s/-logos//`; \
	for vendor_logos in $(VENDOR_LOGOS); do \
		$(MAKE) $$target -C $$vendor_logos || exit 1; \
	done


install: install-grub install-emblems install-logos install-local

install-local:
	mkdir -p $(DESTDIR)/usr/share/gnome-background-properties

	# Kali theme
	### Plymouth theme
	install -d $(DESTDIR)/usr/share/plymouth/themes/kali
	$(INSTALL) $(wildcard kali-theme/plymouth/*) $(DESTDIR)/usr/share/plymouth/themes/kali
	install -d $(DESTDIR)/usr/share/desktop-base/kali-theme
	cd $(DESTDIR)/usr/share/desktop-base/kali-theme && ln -s /usr/share/plymouth/themes/kali plymouth
	$(INSTALL) kali-theme/plymouthd.defaults $(DESTDIR)/usr/share/desktop-base/kali-theme
	### Login background
	install -d $(DESTDIR)/usr/share/desktop-base/kali-theme/login
	$(INSTALL) $(wildcard kali-theme/login/*) $(DESTDIR)/usr/share/desktop-base/kali-theme/login

	### Wallpapers
	install -d $(DESTDIR)/usr/share/desktop-base/kali-theme/wallpaper/contents/images
	$(INSTALL) kali-theme/wallpaper/metadata.desktop $(DESTDIR)/usr/share/desktop-base/kali-theme/wallpaper
	$(INSTALL) kali-theme/wallpaper/gnome-background.xml $(DESTDIR)/usr/share/desktop-base/kali-theme/wallpaper
	$(INSTALL) $(wildcard kali-theme/wallpaper/contents/images/*) $(DESTDIR)/usr/share/desktop-base/kali-theme/wallpaper/contents/images/
	$(INSTALL) kali-theme/gnome-wp-list.xml $(DESTDIR)/usr/share/gnome-background-properties/debian-kali.xml
	# Wallpaper symlink for KDE
	install -d $(DESTDIR)/usr/share/wallpapers
	cd $(DESTDIR)/usr/share/wallpapers && ln -s /usr/share/desktop-base/kali-theme/wallpaper Kali

	### Lockscreen
	install -d $(DESTDIR)/usr/share/desktop-base/kali-theme/lockscreen/contents/images
	$(INSTALL) kali-theme/lockscreen/metadata.desktop $(DESTDIR)/usr/share/desktop-base/kali-theme/lockscreen
	$(INSTALL) kali-theme/lockscreen/gnome-background.xml $(DESTDIR)/usr/share/desktop-base/kali-theme/lockscreen
	$(INSTALL) $(wildcard kali-theme/lockscreen/contents/images/*) $(DESTDIR)/usr/share/desktop-base/kali-theme/lockscreen/contents/images/
	# Lock screen symlink for KDE
	install -d $(DESTDIR)/usr/share/wallpapers
	cd $(DESTDIR)/usr/share/wallpapers && ln -s /usr/share/desktop-base/kali-theme/lockscreen KaliLockScreen

include Makefile.inc
