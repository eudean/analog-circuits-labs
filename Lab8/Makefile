SHELL=/bin/bash
LAB=Lab8
CMLIB=$(HOME)/circuit_macros

all: $(LAB).pdf $(LAB)_Report.pdf $(LAB)_Prelab.pdf
	rm -f `find . -maxdepth 1 ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "Lab*-*.eps"`;

$(LAB).pdf: $(LAB).tex lab8_cascode.tex lab8_audio.tex
	latex $(LAB).tex;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex lab8_cascode1.tex lab8_multi.tex
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

lab8_cascode.tex: lab8_cascode.m4
	m4 -I $(CMLIB) lab8_cascode.m4 | pic -t > lab8_cascode.tex;

lab8_audio.tex: lab8_audio.m4
	m4 -I $(CMLIB) lab8_audio.m4 | pic -t > lab8_audio.tex;

lab8_cascode1.tex: lab8_cascode1.m4
	m4 -I $(CMLIB) lab8_cascode1.m4 | pic -t > lab8_cascode1.tex;

lab8_multi.tex: lab8_multi.m4
	m4 -I $(CMLIB) lab8_multi.m4 | pic -t > lab8_multi.tex;

clean:
	rm -f `find . -maxdepth 1 ! -name "*.tex" ! -name "*.m4" ! -name "*.sty" ! -name "Makefile" -type f -print`;
	rm -f `find . -maxdepth 1 -name "Lab*-*.eps"`;
	rm -f `find . -name "*~" -type f -print`;
