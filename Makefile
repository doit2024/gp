default: check

check: 
	@echo "We're good!"

generate: readme.md
	mkdir -p _site
	pandoc -o _site/index.html readme.md
	cp -r img _site

# This is stupid, but I don't want to make it more complex by detecting
# if pandoc is already installed or not, so just duplicate
generate-ci:
	mkdir -p _site
	./pandoc -o _site/index.html readme.md
	cp -r img _site