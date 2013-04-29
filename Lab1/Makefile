LAB=Lab1
LIBS=~/circuit_macros
LIBCCT=$(LIBS)/libcct.m4

all: $(LAB)_Prelab_Solutions.pdf $(LAB).pdf $(LAB)_Prelab.pdf $(LAB)_Report.pdf $(LAB)_Report_Solutions.pdf
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

$(LAB).pdf: $(LAB).tex ss.tex nmos.tex rc.tex
	latex $(LAB).tex;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex prelab.tex
	latex $(LAB)_Prelab.tex;
	asy $(LAB)_Prelab;
	latex $(LAB)_Prelab.tex;
	dvips $(LAB)_Prelab.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab.pdf" -f "$(LAB)_Prelab.ps";

$(LAB)_Report_Solutions.pdf: $(LAB)_Report_Solutions.tex
	latex $(LAB)_Report_Solutions.tex;
	latex $(LAB)_Report_Solutions.tex;
	dvips $(LAB)_Report_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report_Solutions.pdf" -f "$(LAB)_Report_Solutions.ps";

$(LAB)_Prelab_Solutions.pdf: $(LAB)_Prelab_Solutions.tex
	latex $(LAB)_Prelab_Solutions.tex;
	asy $(LAB)_Prelab_Solutions;
	latex $(LAB)_Prelab_Solutions.tex;
	dvips $(LAB)_Prelab_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab_Solutions.pdf" -f "$(LAB)_Prelab_Solutions.ps";

$(LAB)_Report.pdf: $(LAB)_Report.tex
	latex $(LAB)_Report.tex;
	latex $(LAB)_Report.tex;
	dvips $(LAB)_Report.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report.pdf" -f "$(LAB)_Report.ps";

ss.tex: ss.m4
	m4 $(LIBCCT) ss.m4 | pic -t > ss.tex;

nmos.tex: nmos.m4
	m4 $(LIBCCT) nmos.m4 | pic -t > nmos.tex;

rc.tex: rc.m4
	m4 $(LIBCCT) rc.m4 | pic -t > rc.tex;

prelab.tex: prelab.m4
	m4 $(LIBCCT) prelab.m4 | pic -t > prelab.tex;

clean:
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "Lab*.tex" ! -name "*.m4" ! -name "Makefile" -type f -print`;
	rm -f `find . -name "*~" ! -name "*svn*" -type f -print`;