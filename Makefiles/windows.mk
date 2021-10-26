v=3.0.7

update:
	@.\Makefiles\windows.update $(v)

deploy:
	@git add .\docs
	@git commit -m "Update Docs"
	@git push