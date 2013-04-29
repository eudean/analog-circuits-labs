LAB=Lab3
LIBS=~/circuit_macros
LIBCCT=$(LIBS)/libcct.m4

all: $(LAB).pdf $(LAB)_Prelab.pdf $(LAB)_Prelab_Solutions.pdf $(LAB)_Report.pdf $(LAB)_Report_Solutions.pdf
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

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

$(LAB)_Prelab_Solutions.pdf: $(LAB)_Prelab_Solutions.tex lab3_prelab_bjt0_solution.tex lab3_prelab_bjt.tex lab3_prelab_darlington.tex
	latex $(LAB)_Prelab_Solutions.tex;
	latex $(LAB)_Prelab_Solutions.tex;
	dvips $(LAB)_Prelab_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab_Solutions.pdf" -f "$(LAB)_Prelab_Solutions.ps";

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

lab3_bjt.tex: lab3_bjt.m4
	m4 $(LIBCCT) lab3_bjt.m4 | pic -t > lab3_bjt.tex;

lab3_darlington.tex: lab3_darlington.m4
	m4 $(LIBCCT) lab3_darlington.m4 | pic -t > lab3_darlington.tex;

lab3_prelab_bjt.tex: lab3_prelab_bjt.m4
	m4 $(LIBCCT) lab3_prelab_bjt.m4 | pic -t > lab3_prelab_bjt.tex;

lab3_prelab_bjt0.tex: lab3_prelab_bjt0.m4
	m4 $(LIBCCT) lab3_prelab_bjt0.m4 | pic -t > lab3_prelab_bjt0.tex;

lab3_prelab_darlington.tex: lab3_prelab_darlington.m4
	m4 $(LIBCCT) lab3_prelab_darlington.m4 | pic -t > lab3_prelab_darlington.tex;

lab3_prelab_bjt0_solution.tex: lab3_prelab_bjt0_solution.m4
	m4 $(LIBCCT) lab3_prelab_bjt0_solution.m4 | pic -t > lab3_prelab_bjt0_solution.tex;

clean:
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "*.m4" ! -name "*.sty" ! -name "Makefile" -type f -print`;
