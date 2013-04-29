.PS
cct_init

len = 0.75
Origin: Here
	dot
	{"$V_{G}$" at (Here.x - .2*len, Here.y)}
	line right 0.5*len
	M1: mosfet(up_ len,L,FTDdS,);
	{
		move to M1.G
		line to (M1.G.x, M1.D.y)
		line to M1.D
	}
	{
		move to M1.D
		line up .5*len
		{
			move right_ 0.1*len then down 0.1*len;
			line -> down 0.6*len;
			"$I_{D}$" at (Here.x + 0.2*len, Here.y + 0.3*len)
		}
		{"$V_{D}$" at (Here.x, Here.y + 0.15*len)}
		dot
	}
	move down len*.5
	line down .25*len
	ground
.PE