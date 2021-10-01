ifeq ($(OS),Windows_NT)
	fname=windows.mk
else
	fname=linux.mk
endif

all: update deploy

update:
	make update --makefile=$(fname)
deploy:
	make deploy --makefile=$(fname)