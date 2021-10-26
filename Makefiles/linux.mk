v = 3.0.7

update:
	@chmod +x ./Makefiles/linux.update.sh 
	@./Makefiles/linux.update.sh $(v)

deploy:
	git add ./docs
	git commit -m "Update Docs"
	git push