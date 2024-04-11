mainmk = $(MAKE) -C ./src/themes/

build:
	$(mainmk)

clean:
	$(mainmk) clean
