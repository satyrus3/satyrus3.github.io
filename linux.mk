update:
	@./linux.update.sh

deploy:
	git add ./docs
	git commit -m "Update Docs"
	git push