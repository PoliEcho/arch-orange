dir = usr/share/xfce4-panel-profiles/layouts
TAROPTS := --sort=name --format ustar

.PHONY: build clean install

build:
	for layout in */; do \
		(cd "$${layout}" \
		   && tar $(TAROPTS) -cvjhf "../$$(basename "$${layout}").tar.bz2" *;) \
	done

clean:
	rm -f *.tar.bz2

install:
	install -d $(DESTDIR)/$(dir)
	$(INSTALL_DATA) *.tar.bz2 $(DESTDIR)/$(dir)

include ../Makefile.inc
