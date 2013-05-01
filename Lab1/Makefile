SHELL=/bin/bash
LAB=Lab1
CMLIB=$(HOME)/circuit_macros

all: $(LAB).pdf $(LAB)_Prelab.pdf $(LAB)_Report.pdf
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "$(LAB)*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "$(LAB)*-*.eps"`;

$(LAB).pdf: $(LAB).tex ss.tex nmos.tex rc.tex
	latex $(LAB).tex;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex prelab.tex
	latex $(LAB)_Prelab.tex;
	asy $(LAB)_Prelab*.asy;
	latex $(LAB)_Prelab.tex;
	dvips $(LAB)_Prelab.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab.pdf" -f "$(LAB)_Prelab.ps";

$(LAB)_Report.pdf: $(LAB)_Report.tex
	latex $(LAB)_Report.tex;
	latex $(LAB)_Report.tex;
	dvips $(LAB)_Report.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report.pdf" -f "$(LAB)_Report.ps";

ss.tex: ss.m4
	m4 -I $(CMLIB) ss.m4 | pic -t > ss.tex;

nmos.tex: nmos.m4
	m4 -I $(CMLIB) nmos.m4 | pic -t > nmos.tex;

rc.tex: rc.m4
	m4 -I $(CMLIB) rc.m4 | pic -t > rc.tex;

prelab.tex: prelab.m4
	m4 -I $(CMLIB) prelab.m4 | pic -t > prelab.tex;

clean:
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "$(LAB)*.tex" ! -name "*.m4" ! -name "Makefile" -type f -print`;
	rm -f `find . -maxdepth 1 -name "$(LAB)*-*.eps"`;
	rm -f `find . -name "*~" -type f -print`;
