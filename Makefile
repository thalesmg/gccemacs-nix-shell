.PHONY: install upgrade

upgrade:
	niv upgrade

build:
	nix-build -A gccemacs

install:
	ln -sf /home/thales/dev/nix/gccemacs/gccemacs  ~/bin/gccemacs
