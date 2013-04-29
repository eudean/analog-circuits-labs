LAB1=Lab1/Lab1.pdf
LAB2=Lab2/Lab2.pdf
LAB3=Lab3/Lab3.pdf
LAB4=Lab4/Lab4.pdf
LAB5=Lab5/Lab5.pdf
LAB6=Lab6/Lab6.pdf
LAB7=Lab7/Lab7.pdf
LAB8=Lab8/Lab8.pdf
LAB9=Lab9/Lab9.pdf
LAB10=Lab10/Lab10.pdf
MINIPROJ=Miniproject/Miniproject.pdf
HSPICE_Tutorial=Tutorials/HSPICE_Tutorial.pdf
HP4155_Tutorial=Tutorials/HP4155_Tutorial.pdf
HP54615B_Tutorial=Tutorials/HP54615B_Tutorial.pdf
HP8116A_Tutorial=Tutorials/HP8116A_Tutorial.pdf
Bode_Tutorial=Tutorials/Bode_Tutorial.pdf
HP34401A_Tutorial=Tutorials/HP34401A_Tutorial.pdf
HP6235A_Tutorial=Tutorials/HP6235A_Tutorial.pdf


all: $(LAB1) $(LAB2) $(LAB3) $(LAB4) $(LAB5) $(LAB6) $(LAB7) $(LAB8) $(LAB9) $(LAB10) $(MINIPROJ) $(HP6235A_Tutorial) $(HP34401A_Tutorial) $(Bode_Tutorial) $(HSPICE_Tutorial) $(HP4155_Tutorial) $(HP54615B_Tutorial) $(HP8116A_Tutorial)

$(LAB1):
	cd Lab1; make;

$(LAB2):
	cd Lab2; make;

$(LAB3):
	cd Lab3; make;

$(LAB4):
	cd Lab4; make;

$(LAB5):
	cd Lab5; make;

$(LAB6):
	cd Lab6; make;

$(LAB7):
	cd Lab7; make;

$(LAB8):
	cd Lab8; make;

$(LAB9):
	cd Lab9; make;

$(LAB10):
	cd Lab10; make;

$(MINIPROJ):
	cd Miniproject; make;

$(HSPICE_Tutorial) $(HP4155_Tutorial) $(HP54615B_Tutorial) $(HP8116A_Tutorial) $(Bode_Tutorial) $(HP6235A_Tutorial) $(HP34401A_Tutorial):
	cd Tutorials; make;

test:
	@ ## Check if asy is installed
	@ if (! which asy) then \
		echo "Error: asy not found!"; \
	fi

	@ ## Check if latex is installed
	@ if (! which latex) then \
		echo "Error: latex not found!"; \
	fi

	@ ## Check if dvips is installed
	@ if (! which dvips) then \
		echo "Error: dvips not found!"; \
	fi

	@ ## Check if gs is installed
	@ if (! which gs) then \
		echo "Error: gs not found!"; \
	fi

	@ ## Include checks for circuit_macros, m4, pic (v1.19), and asymptote
	@ ## latex package

	@ echo ""
	@ echo "Test successful!"

clean:
	cd Lab1; make clean;
	cd Lab2; make clean;
	cd Lab3; make clean;
	cd Lab4; make clean;
	cd Lab5; make clean;
	cd Lab6; make clean;
	cd Lab7; make clean;
	cd Lab8; make clean;
	cd Lab9; make clean;
	cd Lab10; make clean;
	cd Miniproject; make clean;
	cd Tutorials; make clean;