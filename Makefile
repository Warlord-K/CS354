add:
	@read -p "Commit Message: " mess; \
	git add .; \
	git commit -m "$$mess"; \
	git push

run:
	@read -p "Prolog Knowledge Base: " kb; \
	swipl -s $$kb