SHELL=/bin/bash
LAB=Lab5
CMLIB=$(HOME)/circuit_macros

all: $(LAB).pdf $(LAB)_Prelab.pdf $(LAB)_Report.pdf
	rm -f `find . -maxdepth 1 -name "Lab*-*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

$(LAB).pdf: $(LAB).tex lab5_ccamp.tex lab5_cbamp.tex lab5_ccload.tex
	latex $(LAB).tex;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex lab5_ccamp.tex lab5_cbamp.tex lab5_cbamp_iin.tex
	latex $(LAB)_Prelab.tex;
	latex $(LAB)_Prelab.tex;
	dvips $(LAB)_Prelab.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab.pdf" -f "$(LAB)_Prelab.ps";

$(LAB)_Report.pdf: $(LAB)_Report.tex
	latex $(LAB)_Report.tex;
	latex $(LAB)_Report.tex;
	dvips $(LAB)_Report.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report.pdf" -f "$(LAB)_Report.ps";

lab5_ccamp.tex: lab5_ccamp.m4
	m4 -I $(CMLIB) lab5_ccamp.m4 | pic -t > lab5_ccamp.tex;

lab5_cbamp.tex: lab5_cbamp.m4
	m4 -I $(CMLIB) lab5_cbamp.m4 | pic -t > lab5_cbamp.tex;

lab5_ccload.tex: lab5_ccload.m4
	m4 -I $(CMLIB) lab5_ccload.m4 | pic -t > lab5_ccload.tex;

lab5_ccamp_ssm.tex: lab5_ccamp_ssm.m4
	m4 -I $(CMLIB) lab5_ccamp_ssm.m4 | pic -t > lab5_ccamp_ssm.tex;

lab5_cbamp_ssm.tex: lab5_cbamp_ssm.m4
	m4 -I $(CMLIB) lab5_cbamp_ssm.m4 | pic -t > lab5_cbamp_ssm.tex;

lab5_2portcur.tex: lab5_2portcur.m4
	m4 -I $(CMLIB) lab5_2portcur.m4 | pic -t > lab5_2portcur.tex;

lab5_cbamp_iin.tex: lab5_cbamp_iin.m4
	m4 -I $(CMLIB) lab5_cbamp_iin.m4 | pic -t > lab5_cbamp_iin.tex;

clean:
	rm -f `find . -maxdepth 1 -name "Lab*-*.eps" ! -name "*.tex" ! -name "*.m4" ! -name "Makefile" -type f -print`;
