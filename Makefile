add:
	@read -p "Commit Message: " mess; \
	git add .; \
	git commit -m $$mess; \
	git push