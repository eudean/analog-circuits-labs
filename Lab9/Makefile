LAB=Lab9
LIBS=~/circuit_macros
LIBCCT=$(LIBS)/libcct.m4

all: $(LAB).pdf $(LAB)_Report.pdf $(LAB)_Prelab.pdf $(LAB)_Report_Solutions.pdf $(LAB)_Prelab_Solutions.pdf
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

$(LAB).pdf: $(LAB).tex lab9_mosfet.tex lab9_mosdiode.tex lab9_2stage.tex lab9_micin.tex
	latex $(LAB).tex;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex lab9_cdamp.tex lab9_cgamp.tex
	latex $(LAB)_Prelab.tex;
	latex $(LAB)_Prelab.tex;
	dvips $(LAB)_Prelab.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab.pdf" -f "$(LAB)_Prelab.ps";

$(LAB)_Prelab_Solutions.pdf: $(LAB)_Prelab_Solutions.tex lab9_cdamp.tex lab9_cdamp_ssm.tex lab9_cgamp.tex lab9_cgamp_ssm.tex
	latex $(LAB)_Prelab_Solutions.tex;
	latex $(LAB)_Prelab_Solutions.tex;
	dvips $(LAB)_Prelab_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab_Solutions.pdf" -f "$(LAB)_Prelab_Solutions.ps";

$(LAB)_Report_Solutions.pdf: $(LAB)_Report_Solutions.tex
	latex $(LAB)_Report_Solutions.tex;
	asy $(LAB)_Report_Solutions;
	latex $(LAB)_Report_Solutions.tex;
	dvips $(LAB)_Report_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report_Solutions.pdf" -f "$(LAB)_Report_Solutions.ps";

$(LAB)_Report.pdf: $(LAB)_Report.tex
	latex $(LAB)_Report.tex;
	asy $(LAB)_Report;
	latex $(LAB)_Report.tex;
	dvips $(LAB)_Report.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report.pdf" -f "$(LAB)_Report.ps";

lab9_mosfet.tex: lab9_mosfet.m4
	m4 $(LIBCCT) lab9_mosfet.m4 | pic -t > lab9_mosfet.tex;

lab9_mosdiode.tex: lab9_mosdiode.m4
	m4 $(LIBCCT) lab9_mosdiode.m4 | pic -t > lab9_mosdiode.tex;

lab9_2stage.tex: lab9_2stage.m4
	m4 $(LIBCCT) lab9_2stage.m4 | pic -t > lab9_2stage.tex;

lab9_micin.tex: lab9_micin.m4
	m4 $(LIBCCT) lab9_micin.m4 | pic -t > lab9_micin.tex;

lab9_cdamp.tex: lab9_cdamp.m4
	m4 $(LIBCCT) lab9_cdamp.m4 | pic -t > lab9_cdamp.tex;

lab9_cgamp.tex: lab9_cgamp.m4
	m4 $(LIBCCT) lab9_cgamp.m4 | pic -t > lab9_cgamp.tex;

lab9_cdamp_ssm.tex: lab9_cdamp_ssm.m4
	m4 $(LIBCCT) lab9_cdamp_ssm.m4 | pic -t > lab9_cdamp_ssm.tex;

lab9_cgamp_ssm.tex: lab9_cgamp_ssm.m4
	m4 $(LIBCCT) lab9_cgamp_ssm.m4 | pic -t > lab9_cgamp_ssm.tex;


clean:
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "*.m4" ! -name "*.sty" ! -name "Makefile" -type f -print`;
	rm -f `find . -name "*~" ! -name "*svn*" -type f -print`;
