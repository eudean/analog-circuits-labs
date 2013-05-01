SHELL=/bin/bash
LAB=Lab6
CMLIB=$(HOME)/circuit_macros

all: $(LAB).pdf $(LAB)_Prelab.pdf $(LAB)_Report.pdf
	rm -f `find . -maxdepth 1 -name "Lab*-*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

$(LAB).pdf: $(LAB).tex lab6_vsource1.tex lab6_csource1.tex lab6_csource2.tex lab6_cmirror1.tex lab6_cmirror2.tex
	latex $(LAB).tex;
	asy $(LAB)*.asy;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex lab6_vsource2.tex lab6_prelab_vsource1.tex lab6_prelab_csource3.tex
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

lab6_vsource1.tex: lab6_vsource1.m4
	m4 -I $(CMLIB) lab6_vsource1.m4 | pic -t > lab6_vsource1.tex;

lab6_csource1.tex: lab6_csource1.m4
	m4 -I $(CMLIB) lab6_csource1.m4 | pic -t > lab6_csource1.tex;

lab6_csource2.tex: lab6_csource2.m4
	m4 -I $(CMLIB) lab6_csource2.m4 | pic -t > lab6_csource2.tex;

lab6_cmirror1.tex: lab6_cmirror1.m4
	m4 -I $(CMLIB) lab6_cmirror1.m4 | pic -t > lab6_cmirror1.tex;

lab6_cmirror2.tex: lab6_cmirror2.m4
	m4 -I $(CMLIB) lab6_cmirror2.m4 | pic -t > lab6_cmirror2.tex;

lab6_vsource2.tex: lab6_vsource2.m4
	m4 -I $(CMLIB) lab6_vsource2.m4 | pic -t > lab6_vsource2.tex;

lab6_prelab_vsource1.tex: lab6_prelab_vsource1.m4
	m4 -I $(CMLIB) lab6_prelab_vsource1.m4 | pic -t > lab6_prelab_vsource1.tex;

lab6_prelab_csource3.tex: lab6_prelab_csource3.m4
	m4 -I $(CMLIB) lab6_prelab_csource3.m4 | pic -t > lab6_prelab_csource3.tex;

lab6_vsource3.tex: lab6_vsource3.m4
	m4 -I $(CMLIB) lab6_vsource3.m4 | pic -t > lab6_vsource3.tex;

clean:
	rm -f `find . -maxdepth 1 -name "Lab*-*.eps" ! -name "*.tex" ! -name "*.m4" ! -name "Makefile" -type f -print`;
