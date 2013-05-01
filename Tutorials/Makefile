SHELL=/bin/bash
CMLIB=$(HOME)/circuit_macros

all: HP4155_Tutorial.pdf HSPICE_Tutorial.pdf HP8116A_Tutorial.pdf HP54615B_Tutorial.pdf HP6235A_Tutorial.pdf HP34401A_Tutorial.pdf Bode_Tutorial.pdf

HP34401A_Tutorial.pdf: HP34401A_Tutorial.tex
	latex HP34401A_Tutorial.tex;
	latex HP34401A_Tutorial.tex;
	dvips HP34401A_Tutorial.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="HP34401A_Tutorial.pdf" -f "HP34401A_Tutorial.ps";
	rm -f `find . -maxdepth 1 ! -name "*Tutorial.tex" ! -name "*Tutorial.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "HP34401A_Tutorial*-*.eps"`;

HP54615B_Tutorial.pdf: HP54615B_Tutorial.tex
	latex HP54615B_Tutorial.tex;
	latex HP54615B_Tutorial.tex;
	dvips HP54615B_Tutorial.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="HP54615B_Tutorial.pdf" -f "HP54615B_Tutorial.ps";
	rm -f `find . -maxdepth 1 ! -name "*Tutorial.tex" ! -name "*Tutorial.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "HP54615B_Tutorial*-*.eps"`;

HP6235A_Tutorial.pdf: HP6235A_Tutorial.tex
	latex HP6235A_Tutorial.tex;
	latex HP6235A_Tutorial.tex;
	dvips HP6235A_Tutorial.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="HP6235A_Tutorial.pdf" -f "HP6235A_Tutorial.ps";
	rm -f `find . -maxdepth 1 ! -name "*Tutorial.tex" ! -name "*Tutorial.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "HP6235A_Tutorial*-*.eps"`;

HP8116A_Tutorial.pdf: HP8116A_Tutorial.tex
	for file in HP8116A*.m4; do \
		m4 -I $(CMLIB) $$file | pic -t > $${file/.m4/.tex}; \
	done
	latex HP8116A_Tutorial.tex;
	latex HP8116A_Tutorial.tex;
	dvips HP8116A_Tutorial.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="HP8116A_Tutorial.pdf" -f "HP8116A_Tutorial.ps";
	rm -f `find . -maxdepth 1 ! -name "*Tutorial.tex" ! -name "*Tutorial.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "HP8116A_Tutorial*-*.eps"`;

HP4155_Tutorial.pdf: HP4155_Tutorial.tex
	latex HP4155_Tutorial.tex;
	latex HP4155_Tutorial.tex;
	dvips HP4155_Tutorial.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="HP4155_Tutorial.pdf" -f "HP4155_Tutorial.ps";
	rm -f `find . -maxdepth 1 ! -name "*Tutorial.tex" ! -name "*Tutorial.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "HP4155_Tutorial*-*.eps"`;

HSPICE_Tutorial.pdf: HSPICE_Tutorial.tex hspice*.m4
	for file in hspice*.m4; do \
		m4 -I $(CMLIB) $$file | pic -t > $${file/.m4/.tex}; \
	done
	latex HSPICE_Tutorial.tex;
	latex HSPICE_Tutorial.tex;
	dvips HSPICE_Tutorial.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="HSPICE_Tutorial.pdf" -f "HSPICE_Tutorial.ps";
	rm -f `find . -maxdepth 1 ! -name "*Tutorial.tex" ! -name "*Tutorial.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "HSPICE_Tutorial*-*.eps"`;

Bode_Tutorial.pdf: Bode_Tutorial.tex hspice*.m4
	for file in hspice*.m4; do \
		m4 -I $(CMLIB) $$file | pic -t > $${file/.m4/.tex}; \
	done
	latex Bode_Tutorial.tex;
	asy Bode_Tutorial*.asy;
	latex Bode_Tutorial.tex;
	dvips Bode_Tutorial.dvi;
	gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="Bode_Tutorial.pdf" -f "Bode_Tutorial.ps";
	rm -f `find . -maxdepth 1 ! -name "*Tutorial.tex" ! -name "*Tutorial.pdf" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "Bode_Tutorial*-*.eps"`;

clean:
	rm -f `find . -maxdepth 1 ! -name "*Tutorial.tex" ! -name "*.m4" ! -name "Make*" -type f -print`;
	rm -f `find . -maxdepth 1 -name "*Tutorial*-*.eps"`;
	rm -f `find . -name "*~" -type f -print`;