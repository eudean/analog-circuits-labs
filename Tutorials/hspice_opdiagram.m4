.PS
cct_init

l=0.75
Origin:Here
	ground(at Origin)
	{ "\texttt{gnd}" at (Here.x - 0.2*l, Here.y) }
	source(up_ l,V); llabel(,\texttt{vs},); rlabel(,\unit{5}{\volt},);
	{ "\texttt{vs}" at (Here.x - 0.2*l, Here.y) }
	resistor(right_ l); rlabel(,\texttt{rs},); llabel(,\unit{5}{\kilo\ohm},);
	{ "\texttt{vd}" at (Here.x + 0.2*l, Here.y) }
	diode(down_ l); rlabel(,\texttt{d1},);
	line to Origin
.PE