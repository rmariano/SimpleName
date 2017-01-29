EXTENSION_NAME = simple-name@rmariano.github.com

.PHONY: package
package: clean
	zip -j $(EXTENSION_NAME).zip src/*

.PHONY: install
install:
	mkdir -p $(HOME)/.local/share/gnome-shell/extensions/$(EXTENSION_NAME)
	cp -a src/* $(HOME)/.local/share/gnome-shell/extensions/$(EXTENSION_NAME)

.PHONY: clean
clean:
	rm *.zip
