.PS
cct_init

len = 0.75
Origin: Here
	ground
	source(up_ .5*len, V); llabel(,V_{IN},)
	source(up_ .5*len, AC); llabel(-,v_{in},+)
	line right 0.5*len
	Q1: bi_trans(up_ len,,BCdEBU);
	{
		move to Q1.C;
		{
			resistor(up_ len); llabel(,R_C,)
			{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
		capacitor(right_ len); rlabel(,C,)
		variable(resistor(down_ len),); rlabel(,R_L,); llabel(+, v_{out}, -)
		ground
	}
	move down len*.5
	line down .5*len
	ground
.PE