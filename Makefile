ifeq ($(OS),Windows_NT)
	fname=".\Makefiles\windows.mk"
else
	fname="./Makefiles/linux.mk"
endif

all: update deploy

update:
	make update --makefile=$(fname)
deploy:
	make deploy --makefile=$(fname)