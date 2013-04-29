LAB=Lab6
LIBS=~/circuit_macros
LIBCCT=$(LIBS)/libcct.m4

all: $(LAB).pdf $(LAB)_Prelab.pdf $(LAB)_Prelab_Solutions.pdf $(LAB)_Report.pdf $(LAB)_Report_Solutions.pdf
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

$(LAB).pdf: $(LAB).tex lab6_vsource1.tex lab6_csource1.tex lab6_csource2.tex lab6_cmirror1.tex lab6_cmirror2.tex
	latex $(LAB).tex;
	asy $(LAB);
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex lab6_vsource2.tex lab6_prelab_vsource1.tex lab6_prelab_csource3.tex
	latex $(LAB)_Prelab.tex;
	asy $(LAB)_Prelab;
	latex $(LAB)_Prelab.tex;
	dvips $(LAB)_Prelab.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab.pdf" -f "$(LAB)_Prelab.ps";

$(LAB)_Prelab_Solutions.pdf: $(LAB)_Prelab_Solutions.tex lab6_vsource2.tex lab6_prelab_vsource1.tex lab6_prelab_csource3.tex
	latex $(LAB)_Prelab_Solutions.tex;
	asy $(LAB)_Prelab_Solutions;
	latex $(LAB)_Prelab_Solutions.tex;
	dvips $(LAB)_Prelab_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab_Solutions.pdf" -f "$(LAB)_Prelab_Solutions.ps";

$(LAB)_Report_Solutions.pdf: $(LAB)_Report_Solutions.tex lab6_vsource3.tex
	latex $(LAB)_Report_Solutions.tex;
	asy $(LAB)_Report_Solutions;
	latex $(LAB)_Report_Solutions.tex;
	dvips $(LAB)_Report_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report_Solutions.pdf" -f "$(LAB)_Report_Solutions.ps";

$(LAB)_Report.pdf: $(LAB)_Report.tex
	latex $(LAB)_Report.tex;
	latex $(LAB)_Report.tex;
	dvips $(LAB)_Report.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report.pdf" -f "$(LAB)_Report.ps";

lab6_vsource1.tex: lab6_vsource1.m4
	m4 $(LIBCCT) lab6_vsource1.m4 | pic -t > lab6_vsource1.tex;

lab6_csource1.tex: lab6_csource1.m4
	m4 $(LIBCCT) lab6_csource1.m4 | pic -t > lab6_csource1.tex;

lab6_csource2.tex: lab6_csource2.m4
	m4 $(LIBCCT) lab6_csource2.m4 | pic -t > lab6_csource2.tex;

lab6_cmirror1.tex: lab6_cmirror1.m4
	m4 $(LIBCCT) lab6_cmirror1.m4 | pic -t > lab6_cmirror1.tex;

lab6_cmirror2.tex: lab6_cmirror2.m4
	m4 $(LIBCCT) lab6_cmirror2.m4 | pic -t > lab6_cmirror2.tex;

lab6_vsource2.tex: lab6_vsource2.m4
	m4 $(LIBCCT) lab6_vsource2.m4 | pic -t > lab6_vsource2.tex;

lab6_prelab_vsource1.tex: lab6_prelab_vsource1.m4
	m4 $(LIBCCT) lab6_prelab_vsource1.m4 | pic -t > lab6_prelab_vsource1.tex;

lab6_prelab_csource3.tex: lab6_prelab_csource3.m4
	m4 $(LIBCCT) lab6_prelab_csource3.m4 | pic -t > lab6_prelab_csource3.tex;

lab6_vsource3.tex: lab6_vsource3.m4
	m4 $(LIBCCT) lab6_vsource3.m4 | pic -t > lab6_vsource3.tex;

clean:
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "*.m4" ! -name "Makefile" -type f -print`;
