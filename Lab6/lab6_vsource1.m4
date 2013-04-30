include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	line up_ 0.25*len;
	gap(up_ 0.75*len); llabel(-,V_{OUT},+);
	line right_ 0.66*len;
	Q1: bi_trans(up_ len,,BCdEBU);
	{
		move to Q1.C;
		{
			line to (Q1.B.x, Here.y)
			line to Q1.B
		}
		{
			variable(resistor(up_ len)); llabel(,R_C,); rarrow(I_C, <-); 
			resistor(up_ len); llabel(,R_{SUP},); rlabel(,\unit{100}{\ohm},);
			{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
	}
	move down len*.5
	line down .5*len
	ground
.PE
