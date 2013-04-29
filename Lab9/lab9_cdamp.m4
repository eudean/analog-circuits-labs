.PS
cct_init

len = 0.75
Origin: Here
	ground
	source(up_ .5*len, V); llabel(,V_{IN},)
	source(up_ .5*len, AC); llabel(-,v_{in},+)
	line right_ 0.5*len;
	M1: mosfet(up_ len,L,FTDdS,);
	{
		move to M1.D;
		line up 0.5*len;
		{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
		line right .15*len
		line left .3*len
	}
	move down len*.5; dot
	{
		line right len;
		gap(down_ len); llabel(+,v_{out},-)
		ground
	}
	resistor(down_ len); llabel(,R_{S},)
	ground
.PE