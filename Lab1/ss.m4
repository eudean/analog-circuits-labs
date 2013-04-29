.PS

l=0.75
Origin:Here
	source(up_ 2*l,AC); llabel(-,v_s,+)
	resistor(right_ l); rlabel(,R_B,)
	{
		"B" at (Here.x + 0.1*l,Here.y)
	}
	resistor(down_ l); rlabel(,r_\pi,); llabel(+,v_\pi,-)
	line right l
	{
		reversed(`consource', up_ l,I); rlabel(,g_m v_\pi,)
		{
			"C" at (Here.x - 0.1*l, Here.y)
		}
		line right l
		{
			resistor(down_ l); llabel(,r_o,)
			line left l
		}
		line right l
		line down 0.5*l
		{
			resistor(down_ l); llabel(,R_C,);
		}
		line right 0.5*l
		gap(down_ l); llabel(+,v_o,-)
		line left 0.5*l
		line down 0.5*l
		line to Origin
	}
	{
		"E" at (Here.x - 0.1*l, Here.y + 0.1*l)
	}
	resistor(down_ l); rlabel(,R_E,)
.PE
