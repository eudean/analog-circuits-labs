.PS
cct_init
l=0.75
Origin:Here
	ground(at Origin)
	{ "\texttt{gnd}" at (Here.x - 0.2*l, Here.y) }
	source(up_ l,AC); llabel(-,\texttt{vs},+)
	{ "\texttt{vs}" at (Here.x - 0.2*l, Here.y) }
	capacitor(right_ l); rlabel(,\texttt{c1},); llabel(,\unit{1}{\nano\farad},)
	{ "\texttt{vo}" at (Here.x + 0.2*l, Here.y) }
	resistor(down_ l); rlabel(,\texttt{r1},); llabel(,\unit{1}{\kilo\ohm},)
	line to Origin
.PE