export LAB=Lab2

add:
	@read -p "Commit Message: " mess; \
	git add .; \
	git commit -m "$$mess"; \
	git push

run:
	@read -p "Question Number: " kb; \
	swipl -s $$LAB/q$$kb.pl