include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	source(up_ .5*len, V); llabel(,V_{IN},)
	source(up_ .5*len, AC); llabel(-,v_{in},+)
	line right_ .5*len;
	mosfet(up_ len,L,FTDdS,);
	{
		move up len*.5;
		{
			resistor(up_ len); llabel(,R_D,)
			{"$V_{DD}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
		line right .5*len;
		mosfet(up_ len,L,FTDdS,);
		{
			move up len*.5
			line up len*.5
			{"$V_{DD}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len		
		}
		move down len*.5
		{
			line right len*.5;
			gap(down_ len); llabel(+,V_{out},-)
			ground
		}
		resistor(down_ len); rlabel(,R_S,)
		ground
	}
	move down len*.5
	line down .5*len
	ground
.PE