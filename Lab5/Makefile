LAB=Lab5
LIBS=~/circuit_macros
LIBCCT=$(LIBS)/libcct.m4

all: $(LAB).pdf $(LAB)_Prelab.pdf $(LAB)_Prelab_Solutions.pdf $(LAB)_Report.pdf $(LAB)_Report_Solutions.pdf
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

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

$(LAB)_Prelab_Solutions.pdf: $(LAB)_Prelab_Solutions.tex lab5_ccamp.tex lab5_cbamp.tex lab5_ccamp_ssm.tex lab5_cbamp_ssm.tex lab5_cbamp_iin.tex
	latex $(LAB)_Prelab_Solutions.tex;
	latex $(LAB)_Prelab_Solutions.tex;
	dvips $(LAB)_Prelab_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab_Solutions.pdf" -f "$(LAB)_Prelab_Solutions.ps";

$(LAB)_Report_Solutions.pdf: $(LAB)_Report_Solutions.tex lab5_2portcur.tex
	latex $(LAB)_Report_Solutions.tex;
	latex $(LAB)_Report_Solutions.tex;
	dvips $(LAB)_Report_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report_Solutions.pdf" -f "$(LAB)_Report_Solutions.ps";

$(LAB)_Report.pdf: $(LAB)_Report.tex
	latex $(LAB)_Report.tex;
	latex $(LAB)_Report.tex;
	dvips $(LAB)_Report.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report.pdf" -f "$(LAB)_Report.ps";

lab5_ccamp.tex: lab5_ccamp.m4
	m4 $(LIBCCT) lab5_ccamp.m4 | pic -t > lab5_ccamp.tex;

lab5_cbamp.tex: lab5_cbamp.m4
	m4 $(LIBCCT) lab5_cbamp.m4 | pic -t > lab5_cbamp.tex;

lab5_ccload.tex: lab5_ccload.m4
	m4 $(LIBCCT) lab5_ccload.m4 | pic -t > lab5_ccload.tex;

lab5_ccamp_ssm.tex: lab5_ccamp_ssm.m4
	m4 $(LIBCCT) lab5_ccamp_ssm.m4 | pic -t > lab5_ccamp_ssm.tex;

lab5_cbamp_ssm.tex: lab5_cbamp_ssm.m4
	m4 $(LIBCCT) lab5_cbamp_ssm.m4 | pic -t > lab5_cbamp_ssm.tex;

lab5_2portcur.tex: lab5_2portcur.m4
	m4 $(LIBCCT) lab5_2portcur.m4 | pic -t > lab5_2portcur.tex;

lab5_cbamp_iin.tex: lab5_cbamp_iin.m4
	m4 $(LIBCCT) lab5_cbamp_iin.m4 | pic -t > lab5_cbamp_iin.tex;

clean:
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "*.m4" ! -name "Makefile" -type f -print`;
