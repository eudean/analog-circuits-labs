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
			{"$V_{CC}$" at (Here.x, Here.y + .15*len)}
			line right .15*len
			line left .3*len
		}
		line right .5*len
		gap(down_ len); llabel(+, v_{out}, -)
		ground
	}
	move down len*.5
	resistor(down_ .5*len); rlabel(,R_E,)
	ground
.PE