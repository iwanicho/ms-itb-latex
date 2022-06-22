all: clean install

install:
	mkdir -p ignore
	mkdir -p out
	latexmk -pdf -bibtex -outdir=ignore -cd ./thesis.tex
	cp ignore/thesis.pdf out

clean:
	rm -f ignore/* out/*
	find . -iname "*~" -exec rm '{}' ';'
