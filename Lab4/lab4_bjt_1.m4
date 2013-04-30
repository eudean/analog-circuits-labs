include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	source(up_ .5*len, V); llabel(,V_{IN},)
	source(up_ .5*len, AC); llabel(-,v_{in},+)
	{
		move right 0.2*len then up 0.1*len;
		line -> right 0.6*len;
		"$I_{IN}$" at (Here.x - 0.3*len, Here.y + 0.15*len)
	}
	line right_ len;
	bi_trans(up_ len,,BCdEBU);
	{
		move up len*.5;
		{
			resistor(up_ len); llabel(,R_C,)
			{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
		line right_ .5*len;
		gap(down_ len); llabel(+, v_{out}, -)
		ground
	}
	move down len*.5
	line down .5*len
	ground
.PE