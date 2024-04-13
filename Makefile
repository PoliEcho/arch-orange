mainmk = $(MAKE) -C ./src/themes/

build:
	$(mainmk)

clean:
	$(mainmk) clean
	rm -fr ./share

install:
	cp -r ./share/themes/* /usr/share/themes/ 

uninstall:
	rm -fr /usr/share/themes/Kaliish-orange*
