.DEFAULT_GOAL = build

.PHONY: build
build: dist/index.html

dist/index.html: dist index.html
	cp index.html dist/

dist:
	mkdir -p dist

.PHONY: clean
clean:
	rm -rf dist
