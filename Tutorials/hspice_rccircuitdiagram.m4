include(libcct.m4)
.PS
cct_init

l=0.75
Origin:Here
	ground(at Origin)
	{ "\texttt{gnd}" at (Here.x - 0.2*l, Here.y) }
	source(up_ l,AC); llabel(-,\texttt{vs},+)
	{ "\texttt{vs}" at (Here.x - 0.2*l, Here.y) }
	resistor(right_ l); rlabel(,\texttt{r1},); llabel(,\unit{1}{\kilo\ohm},)
	{ "\texttt{vo}" at (Here.x + 0.2*l, Here.y) }
	capacitor(down_ l); rlabel(,\texttt{c1},); llabel(,\unit{1}{\micro\farad},)
	line to Origin
.PE