REM clean
rmdir /S /Q ignore
rmdir /S /Q out
	
REM install
mkdir ignore
mkdir out
latexmk -pdf -bibtex -outdir=ignore -cd .\thesis.tex
copy ignore\thesis.pdf out
