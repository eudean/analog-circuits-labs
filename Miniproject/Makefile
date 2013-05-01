SHELL=/bin/bash
LAB=Miniproject
CMLIB=$(HOME)/circuit_macros

all: $(LAB).pdf
	rm -f `find . -maxdepth 1 -name "Miniproject*-*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

$(LAB).pdf: $(LAB).tex demod.tex vsource.tex csource.tex
	latex $(LAB).tex;
	asy $(LAB)*.asy;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

demod.tex: demod.m4
	m4 -I $(CMLIB) demod.m4 | pic -t > demod.tex;

vsource.tex: vsource.m4
	m4 -I $(CMLIB) vsource.m4 | pic -t > vsource.tex;

csource.tex: csource.m4
	m4 -I $(CMLIB) csource.m4 | pic -t > csource.tex;

clean:
	rm -f `find . -maxdepth 1 -name "Miniproject*-*.eps" ! -name "*.tex" ! -name "*.m4" ! -name "Makefile" -type f -print`;
	rm -f `find . -name "*~" ! -name "*svn*" -type f -print`;
