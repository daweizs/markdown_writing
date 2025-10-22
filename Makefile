include common.mk

INPUT := src/chapter-01/0100-introduction.md \
	src/chapter-02/0200-writing-env.md \
	src/chapter-02/0201-vscode.md \
	src/chapter-02/0202-markdown.md \
#	src/chapter-02/0203-git-local.md \
#	src/chapter-02/0204-git-remote.md \
#		src/chapter-03/0300-mpe-base.md \
#	src/chapter-03/0301-commonmark.md \

all: init html tex pdf

init:
	python $(PANDOCX)/src/main/python/init.py build
#	@$(INITDIR)

html:
	pandoc --verbose --resource-path=$(PANDOCX) \
		-M crossrefYaml=$(PANDOCX)/repos/crs/zh-CN.yaml \
		-F pandoc-crossref \
		--number-sections \
		--top-level-division=chapter \
		--template=src/main/templates/html/book/book.html \
		$(INPUT) \
		-output-directory=build \
		-o build/md_writing.html

tex:
	pandoc --verbose --pdf-engine=xelatex --resource-path=$(PANDOCX) \
		-F pandoc-crossref \
		-M crossrefYaml=$(PANDOCX)/repos/crs/zh-CN.yaml \
		--metadata-file=$(PANDOCX)/src/main/templates/tex/book/md_writing.yaml \
		--number-sections \
		--top-level-division=chapter \
		--template=src/main/templates/tex/book/md_writing.tpl \
		$(INPUT) \
		-o build/md_writing.tex

pdf: 
	latexmk build/md_writing.tex -xelatex -shell-escape \
		-halt-on-error -interaction=nonstopmode -output-directory=build

