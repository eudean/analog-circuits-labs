SHELL=/bin/bash
LAB=Lab7
CMLIB=$(HOME)/circuit_macros

all: $(LAB).pdf $(LAB)_Report.pdf $(LAB)_Prelab.pdf
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "$(LAB)*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "$(LAB)*-*.eps"`;

$(LAB).pdf: $(LAB).tex lab7_commonemitter.tex lab7_millerlab.tex lab7_outputcap.tex lab7_commoncollector.tex
	latex $(LAB).tex;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex lab7_miller.tex lab7_prelab0.tex
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

lab7_miller.tex: lab7_miller.m4
	m4 -I $(CMLIB) lab7_miller.m4 | pic -t > lab7_miller.tex;

lab7_prelab0.tex: lab7_prelab0.m4
	m4 -I $(CMLIB) lab7_prelab0.m4 | pic -t > lab7_prelab0.tex;

lab7_commonemitter.tex: lab7_commonemitter.m4
	m4 -I $(CMLIB) lab7_commonemitter.m4 | pic -t > lab7_commonemitter.tex;

lab7_millerlab.tex: lab7_millerlab.m4
	m4 -I $(CMLIB) lab7_millerlab.m4 | pic -t > lab7_millerlab.tex;

lab7_outputcap.tex: lab7_outputcap.m4
	m4 -I $(CMLIB) lab7_outputcap.m4 | pic -t > lab7_outputcap.tex;

lab7_commoncollector.tex: lab7_commoncollector.m4
	m4 -I $(CMLIB) lab7_commoncollector.m4 | pic -t > lab7_commoncollector.tex;

clean:
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "$(LAB)*.tex" ! -name "*.m4" ! -name "*.sty" ! -name "Makefile" -type f -print`;
	rm -f `find . -maxdepth 1 -name "$(LAB)*-*.eps"`;
	rm -f `find . -name "*~" -type f -print`;
