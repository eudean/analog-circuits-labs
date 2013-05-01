SHELL=/bin/bash
LAB=Lab3
CMLIB=$(HOME)/circuit_macros

all: $(LAB).pdf $(LAB)_Prelab.pdf $(LAB)_Report.pdf
	rm -f `find . -maxdepth 1 -name "Lab*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

$(LAB).pdf: $(LAB).tex lab3_bjt.tex lab3_darlington.tex
	latex $(LAB).tex;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex lab3_prelab_bjt.tex lab3_prelab_bjt0.tex lab3_prelab_darlington.tex
	latex $(LAB)_Prelab.tex;
	latex $(LAB)_Prelab.tex;
	dvips $(LAB)_Prelab.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab.pdf" -f "$(LAB)_Prelab.ps";

$(LAB)_Report.pdf: $(LAB)_Report.tex
	latex $(LAB)_Report.tex;
	latex $(LAB)_Report.tex;
	dvips $(LAB)_Report.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report.pdf" -f "$(LAB)_Report.ps";

lab3_bjt.tex: lab3_bjt.m4
	m4 -I $(CMLIB) lab3_bjt.m4 | pic -t > lab3_bjt.tex;

lab3_darlington.tex: lab3_darlington.m4
	m4 -I $(CMLIB) lab3_darlington.m4 | pic -t > lab3_darlington.tex;

lab3_prelab_bjt.tex: lab3_prelab_bjt.m4
	m4 -I $(CMLIB) lab3_prelab_bjt.m4 | pic -t > lab3_prelab_bjt.tex;

lab3_prelab_bjt0.tex: lab3_prelab_bjt0.m4
	m4 -I $(CMLIB) lab3_prelab_bjt0.m4 | pic -t > lab3_prelab_bjt0.tex;

lab3_prelab_darlington.tex: lab3_prelab_darlington.m4
	m4 -I $(CMLIB) lab3_prelab_darlington.m4 | pic -t > lab3_prelab_darlington.tex;

clean:
	rm -f `find . -maxdepth 1 -name "Lab*.eps" ! -name "*.tex" ! -name "*.m4" ! -name "*.sty" ! -name "Makefile" -type f -print`;
