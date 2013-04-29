LAB=Lab2
LIBS=~/circuit_macros
LIBCCT=$(LIBS)/libcct.m4

all: $(LAB).pdf $(LAB)_Report.pdf $(LAB)_Report_Solutions.pdf $(LAB)_Prelab.pdf
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

$(LAB).pdf: $(LAB).tex lab2_diode.tex lab2_r.tex lab2_rc.tex
	latex $(LAB).tex;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Report_Solutions.pdf: $(LAB)_Report_Solutions.tex
	latex $(LAB)_Report_Solutions.tex;
	latex $(LAB)_Report_Solutions.tex;
	dvips $(LAB)_Report_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report_Solutions.pdf" -f "$(LAB)_Report_Solutions.ps";

$(LAB)_Report.pdf: $(LAB)_Report.tex
	latex $(LAB)_Report.tex;
	latex $(LAB)_Report.tex;
	dvips $(LAB)_Report.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report.pdf" -f "$(LAB)_Report.ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex
	latex $(LAB)_Prelab.tex;
	latex $(LAB)_Prelab.tex;
	dvips $(LAB)_Prelab.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab.pdf" -f "$(LAB)_Prelab.ps";

lab2_diode.tex: lab2_diode.m4
	m4 $(LIBCCT) lab2_diode.m4 | pic -t > lab2_diode.tex;

lab2_r.tex: lab2_r.m4
	m4 $(LIBCCT) lab2_r.m4 | pic -t > lab2_r.tex;

lab2_rc.tex: lab2_rc.m4
	m4 $(LIBCCT) lab2_rc.m4 | pic -t > lab2_rc.tex;

clean:
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "*.m4" ! -name "Makefile" -type f -print`;
	rm -f `find . -name "*~" ! -name "*svn*" -type f -print`;
