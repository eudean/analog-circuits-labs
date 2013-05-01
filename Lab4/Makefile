SHELL=/bin/bash
LAB=Lab4
CMLIB=$(HOME)/circuit_macros

all: $(LAB).pdf $(LAB)_Prelab.pdf $(LAB)_Report.pdf
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "$(LAB)*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "$(LAB)*-*.eps"`;

$(LAB).pdf: $(LAB).tex lab4_bjt_1.tex lab4_bjtload.tex lab4_degen.tex
	latex $(LAB).tex;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex lab4_bjt.tex
	latex $(LAB)_Prelab.tex;
	asy $(LAB)_Prelab*.asy;
	latex $(LAB)_Prelab.tex;
	dvips $(LAB)_Prelab.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab.pdf" -f "$(LAB)_Prelab.ps";

$(LAB)_Report.pdf: $(LAB)_Report.tex lab4_2port.tex lab4_2portload.tex
	latex $(LAB)_Report.tex;
	latex $(LAB)_Report.tex;
	dvips $(LAB)_Report.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report.pdf" -f "$(LAB)_Report.ps";

lab4_2port.tex: lab4_2port.m4
	m4 -I $(CMLIB) lab4_2port.m4 | pic -t > lab4_2port.tex;

lab4_2portload.tex: lab4_2portload.m4
	m4 -I $(CMLIB) lab4_2portload.m4 | pic -t > lab4_2portload.tex;

lab4_bjt.tex: lab4_bjt.m4
	m4 -I $(CMLIB) lab4_bjt.m4 | pic -t > lab4_bjt.tex;

lab4_bjt_1.tex: lab4_bjt_1.m4
	m4 -I $(CMLIB) lab4_bjt_1.m4 | pic -t > lab4_bjt_1.tex;

lab4_bjtload.tex: lab4_bjtload.m4
	m4 -I $(CMLIB) lab4_bjtload.m4 | pic -t > lab4_bjtload.tex;

lab4_degen.tex: lab4_degen.m4
	m4 -I $(CMLIB) lab4_degen.m4 | pic -t > lab4_degen.tex;

clean:
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "$(LAB)*.tex" ! -name "*.m4" ! -name "Makefile" -type f -print`;
	rm -f `find . -maxdepth 1 -name "$(LAB)*-*.eps"`;
