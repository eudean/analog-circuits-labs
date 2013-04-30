include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	resistor(up_ len); rlabel(,R_{L},); llabel(-,V_{OUT},+);
	move up len
	{
		resistor(down_ len); rlabel(,R,); larrow(I_{OUT});
	}
	{
		{
			{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
	}
.PE