ifeq ($(OS),Windows_NT)
	fname=".\Makefiles\windows.mk"
else
	fname="./Makefiles/linux.mk"
endif

v=3.0.7

all: update deploy

update:
	make update --makefile=$(fname) v=$(v)
deploy:
	make deploy --makefile=$(fname) v=$(v)