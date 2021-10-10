update:
	@.\windows.update

deploy:
	git add ..\docs
	git commit -m "Update Docs"
	git push