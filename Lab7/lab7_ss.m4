.PS

l=0.75
Origin:Here
	source(up_ l,AC); llabel(-,v_{in},+)
	resistor(right_ l); rlabel(,R_S,)
	{
		resistor(down_ l); rlabel(,r_\pi,); llabel(+,v_\pi,-)
	}
	line right l
	{
		capacitor(down_ l); rlabel(,C_\pi,);
		line right l
	}
	{
		capacitor(right_ l); rlabel(,C_\mu,);
		consource(down_ l,I); llabel(,g_m v_\pi,)
		line right l
		{
			resistor(up_ l); rlabel(,r_o,)
			line left l
		}
		line right l
		{
			resistor(up_ l); rlabel(,R_C,);
			line left l
		}
		move up l
		line right 0.5*l
		gap(down_ l); llabel(+,v_o,-)
		line to Origin
	}
.PE
