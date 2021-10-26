ifeq ($(OS),Windows_NT)
	fname=".\Makefiles\windows.mk"
else
	fname="./Makefiles/linux.mk"
endif

v=3.7.0

all: update deploy

update:
	make update --makefile=$(fname) v=$(v)
deploy:
	make deploy --makefile=$(fname) v=$(v)