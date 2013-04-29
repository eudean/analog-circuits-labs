.PS

l=0.75
Origin:Here
	source(up_ l,AC); llabel(-,v_{eq1},+)
	resistor(right_ l); rlabel(,R_{eq1},)
	{
		capacitor(down_ l); rlabel(,C_{eq1},);
		line right l
	}
	{
		move right l
		consource(down_ l,I); llabel(,g_m v_\pi,)
		line right l
		{
			resistor(up_ l); rlabel(,R_{eq2},)
			line left l
		}
		line right l
		{
			capacitor(up_ l); rlabel(,C_{eq2},);
			line left l
		}
		move up l
		line right 0.5*l
		gap(down_ l); llabel(+,v_o,-)
		line to Origin
	}
.PE
