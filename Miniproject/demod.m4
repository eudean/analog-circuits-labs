include(libcct.m4)
.PS
cct_init

l = 0.75
Origin: Here
	ground(at Here);
	inductor(up_ l); llabel(Yellow,L_1,White);
	line right 0.5*l;
	{
		line up l;
		antenna(at Here);
	}
	line right 0.5*l;
	{
		variable(`capacitor(down_ l)'); rlabel(,C_1,);
	}
	{ "$m(t)$" at (Here.x, Here.y + 0.15*l); }
	diode(right_ l); rlabel(,D_1,);
	{
		capacitor(down_ l); rlabel(,C_2,);
	}
	{ "$d(t)$" at (Here.x, Here.y + 0.15*l); }
	line right l
	{
		resistor(down_ l); rlabel(,R_2,);
		line to Origin
	}

	"(a)" at (1.5*l, -0.5*l)
	move right 2.5*l
	move up 0.5*l

NewOrigin:Here

	ground(at NewOrigin);
	inductor(up_ l); llabel(Yellow,L_1,);
	{
		L1: line right l*1.5;
		line up l;
		{ "$m(t)$" at (Here.x, Here.y + 0.15*l); }
		diode(right_ l); rlabel(,D_1,);
		{
			line down l*.5;
			capacitor(down_ l); rlabel(,C_2,);
			line down l*.5;
		}
		{ "$d(t)$" at (Here.x, Here.y + 0.15*l); }
		line right l
		{
			line down l*.5;			
			resistor(down_ l); rlabel(,R_2,);
			line down l*.5;
			line to NewOrigin
		}
		
	}
	{"$Black$" at (Here.x - 0.3*l, Here.y);}
	inductor(up_ l); llabel(,L_2,White);
	line right 0.5*l;
	{
		capacitor(up_ l*.5); llabel(,C_3,);
		antenna(at Here);
	}
	line right 0.5*l;
	crossover(down l*1.05, L, L1);
	variable(`capacitor(down_ 0.95*l)'); rlabel(,C_1,);
	"(b)" at (NewOrigin.x + 1.75*l, -0.5*l)

.PE
