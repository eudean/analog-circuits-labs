include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	line up_ 0.25*len;
	gap(up_ 0.75*len); rlabel(-,V_{OUT},+);
	line left_ 0.66*len;
	M1: e_fet(up_ len,R,,S);
	{
		move to M1.D;
		{
			line to (M1.G.x, Here.y)
			line to M1.G
		}
		{
			resistor(up_ len); llabel(,R_{BIAS},); rarrow(I_{BIAS}, <-); 
			{"$V_{DD}$" at (Here.x, Here.y + .15*len)}
			line right .15*len
			line left .3*len
		}
	}
	move down len*.5
	line down .5*len
	ground

	"(a)" at (-.5*len, -0.5*len)
	move right 3.5*len
	move up 0.5*len

NewOrigin:Here
	
	{"AC Signal Source" at (Here.x, Here.y-0.2*len)}
	line up_ 0.25*len;
	C1: capacitor(up_ 0.75*len); llabel(,C_{AC},);
	{
	line right_ 0.66*len;
	"To Amplifier" at (Here.x+0.2*len, Here.y + 0.2*len)
	}
	move left len;
	R1: resistor left_ 0.66*len; rlabel(,R_{DC},);
	M1: e_fet(up_ len,R,,S) with .G at (R1.start.x, R1.start.y);
	{
		move to M1.D;
		{
			line to (M1.G.x, Here.y)
			line to M1.G
		}
		{
			resistor(up_ len); llabel(,R_{BIAS},); rarrow(I_{BIAS}, <-); 
			{"$V_{DD}$" at (Here.x, Here.y + .15*len)}
			line right .15*len
			line left .3*len
		}
	}
	move down len*.5
	line down .5*len
	ground

	"(b)" at (NewOrigin.x - 0.3*len, -0.5*len)
.PE
