.PS
cct_init

len = 0.75
Origin: Here
	ground
	line up_ 0.25*len;
	dot
	variable(resistor(up_ len),); llabel(-,V_{out},+); rlabel(,R_{L},);
	dot
	{
		move right_ 0.25*len;
		move up_ 0.75*len;
		line -> down 0.6*len;
		"$I_{out}$" at (Here.x + 0.25*len, Here.y + 0.4*len)
	}
	line up_ 0.5*len;
	resistor(up_ len); rlabel(,R,);
	{
		line up_ len*0.2;
		{
			{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
	}
.PE