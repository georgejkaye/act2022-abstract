MAIN=main.tex
SECTIONS=$(wildcard sections/*.tex)
AUX=
SOURCE=$(MAIN) $(SECTIONS) $(AUX)
FIGS=$(wildcard figures/*)
REFS=$(wildcard refs/*.bib)
MACROS=$(wildcard macros/*.tex)

.PHONY: clean all abstract init

all: abstract
abstract: main.pdf

init:
	git submodule update --init

main.pdf: $(MAIN) $(SECTIONS) $(AUX) $(REFS) $(FIGS) $(MACROS)
	latexmk -pdf $(basename $@).tex

tidy:
	latexmk -c $(MAIN)
	rm -f *run.xml *vtc *bbl *synctex.gz

clean: 
	latexmk -C $(MAIN)
	rm -f *run.xml *vtc *bbl *synctex.gz