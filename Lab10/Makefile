SHELL=/bin/bash
LAB=Lab10
CMLIB=$(HOME)/circuit_macros

all: $(LAB).pdf $(LAB)_Prelab.pdf $(LAB)_Report.pdf
	rm -f `find . -maxdepth 1 -name "Lab*-*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

$(LAB).pdf: $(LAB).tex diff.tex activediff.tex activediffload.tex inverter.tex
	latex $(LAB).tex;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex diff.tex
	latex $(LAB)_Prelab.tex;
	latex $(LAB)_Prelab.tex;
	dvips $(LAB)_Prelab.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab.pdf" -f "$(LAB)_Prelab.ps";

$(LAB)_Report.pdf: $(LAB)_Report.tex
	latex $(LAB)_Report.tex;
	asy $(LAB)_Report*.asy;
	latex $(LAB)_Report.tex;
	dvips $(LAB)_Report.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report.pdf" -f "$(LAB)_Report.ps";

diff.tex: diff.m4
	m4 -I $(CMLIB) diff.m4 | pic -t > diff.tex;

activediff.tex: activediff.m4
	m4 -I $(CMLIB) activediff.m4 | pic -t > activediff.tex;

activediffload.tex: activediffload.m4
	m4 -I $(CMLIB) activediffload.m4 | pic -t > activediffload.tex;

inverter.tex: inverter.m4
	m4 -I $(CMLIB) inverter.m4 | pic -t > inverter.tex;

clean:
	rm -f `find . -maxdepth 1 -name "Lab*-*.eps" ! -name "*.tex" ! -name "*.m4" ! -name "Makefile" -type f -print`;
	rm -f `find . -name "*~" ! -name "*svn*" -type f -print`;
