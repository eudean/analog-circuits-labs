include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	source(up_ .5*len, V); llabel(,V_{B},)
	line right len
	bi_trans(up_ len,,BCdEBU);
	{
		move up len*.5;
		{
			line right len;
			gap(down_ len); llabel(+,v_{out},-)
			ground
		}
		resistor(up_ len); llabel(,R_{C},);
		{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
		line right .15*len
		line left .3*len
	}
	move down len*.5; 
	source(down_ len, AC); llabel(+,v_{in},-)
	ground
.PE