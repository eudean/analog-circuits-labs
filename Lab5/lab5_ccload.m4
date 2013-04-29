.PS
cct_init

len = 0.75
Origin: Here
	ground
	source(up_ .5*len, V); llabel(,V_{IN},)
	source(up_ .5*len, AC); llabel(-,v_{in},+)
	arrowline(right_ len); llabel(,I_{in},)
	Q1: bi_trans(up_ len,,BCdEBU);
	{
		move to Q1.C;
		line up 0.5*len;
		{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
		line right .15*len
		line left .3*len
	}
	move down len*.5;
	{
		capacitor(right_ len); llabel(,C,)
		resistor(down_ len); llabel(+,v_{out},-); rlabel(,R_{L},)
		ground
	}
	resistor(down_ len); llabel(,R_E,)
	ground
.PE