.PHONY: push

ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

push:
	rm -rf public
	git clone git@github.com:Benew/benew.github.io.git public
	gulp build
	cd public && git add . && git commit -m 'build' && git push origin master
	

