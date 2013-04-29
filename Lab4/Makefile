LAB=Lab4
LIBS=~/circuit_macros
LIBCCT=$(LIBS)/libcct.m4

all: $(LAB).pdf $(LAB)_Prelab.pdf $(LAB)_Prelab_Solutions.pdf $(LAB)_Report.pdf $(LAB)_Report_Solutions.pdf
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "$(LAB)*.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;

$(LAB).pdf: $(LAB).tex lab4_bjt_1.tex lab4_bjtload.tex lab4_degen.tex
	latex $(LAB).tex;
	latex $(LAB).tex;
	dvips $(LAB).dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB).pdf" -f "$(LAB).ps";

$(LAB)_Prelab.pdf: $(LAB)_Prelab.tex lab4_bjt.tex
	latex $(LAB)_Prelab.tex;
	asy $(LAB)_Prelab;
	latex $(LAB)_Prelab.tex;
	dvips $(LAB)_Prelab.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab.pdf" -f "$(LAB)_Prelab.ps";

$(LAB)_Prelab_Solutions.pdf: $(LAB)_Prelab_Solutions.tex lab4_bjt.tex lab4_ceamp_ssm.tex
	latex $(LAB)_Prelab_Solutions.tex;
	asy $(LAB)_Prelab_Solutions;
	latex $(LAB)_Prelab_Solutions.tex;
	dvips $(LAB)_Prelab_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Prelab_Solutions.pdf" -f "$(LAB)_Prelab_Solutions.ps";

$(LAB)_Report_Solutions.pdf: $(LAB)_Report_Solutions.tex lab4_2port.tex lab4_2portload.tex lab4_bjtcur.tex lab4_bjtcurres.tex lab4_gm_amp_two_port.tex lab4_ceamp_csourcebiased_withload_ssm.tex
	latex $(LAB)_Report_Solutions.tex;
	latex $(LAB)_Report_Solutions.tex;
	dvips $(LAB)_Report_Solutions.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report_Solutions.pdf" -f "$(LAB)_Report_Solutions.ps";

$(LAB)_Report.pdf: $(LAB)_Report.tex lab4_2port.tex lab4_2portload.tex lab4_bjtcur.tex lab4_bjtcurres.tex
	latex $(LAB)_Report.tex;
	latex $(LAB)_Report.tex;
	dvips $(LAB)_Report.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$(LAB)_Report.pdf" -f "$(LAB)_Report.ps";

lab4_2port.tex: lab4_2port.m4
	m4 $(LIBCCT) lab4_2port.m4 | pic -t > lab4_2port.tex;

lab4_2portload.tex: lab4_2portload.m4
	m4 $(LIBCCT) lab4_2portload.m4 | pic -t > lab4_2portload.tex;

lab4_bjt.tex: lab4_bjt.m4
	m4 $(LIBCCT) lab4_bjt.m4 | pic -t > lab4_bjt.tex;

lab4_bjt_1.tex: lab4_bjt_1.m4
	m4 $(LIBCCT) lab4_bjt_1.m4 | pic -t > lab4_bjt_1.tex;

lab4_bjtcur.tex: lab4_bjtcur.m4
	m4 $(LIBCCT) lab4_bjtcur.m4 | pic -t > lab4_bjtcur.tex;

lab4_bjtcurres.tex: lab4_bjtcurres.m4
	m4 $(LIBCCT) lab4_bjtcurres.m4 | pic -t > lab4_bjtcurres.tex;

lab4_bjtload.tex: lab4_bjtload.m4
	m4 $(LIBCCT) lab4_bjtload.m4 | pic -t > lab4_bjtload.tex;

lab4_ceamp_csourcebiased_withload_ssm.tex: lab4_ceamp_csourcebiased_withload_ssm.m4
	m4 $(LIBCCT) lab4_ceamp_csourcebiased_withload_ssm.m4 | pic -t > lab4_ceamp_csourcebiased_withload_ssm.tex;

lab4_ceamp_ssm.tex: lab4_ceamp_ssm.m4
	m4 $(LIBCCT) lab4_ceamp_ssm.m4 | pic -t > lab4_ceamp_ssm.tex;

lab4_degen.tex: lab4_degen.m4
	m4 $(LIBCCT) lab4_degen.m4 | pic -t > lab4_degen.tex;

lab4_gm_amp_two_port.tex: lab4_gm_amp_two_port.m4
	m4 $(LIBCCT) lab4_gm_amp_two_port.m4 | pic -t > lab4_gm_amp_two_port.tex;

clean:
	rm -f `find . -maxdepth 1 ! -name "*.eps" ! -name "*.tex" ! -name "*.m4" ! -name "Makefile" -type f -print`;
