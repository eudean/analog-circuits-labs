include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	line up_ 0.25*len;
	source(up_ .5*len, V); llabel(,V_{BIAS},)
	line right_ 2/3*len;
	Q1: bi_tr(down_ len,R,P);
	{
		line right 0.25*len;
		Q2: bi_tr(down_ len,R,P);
		line from Q1.E to Q2.E;
		line from Q1.B to Q2.B;
	}
	{
		move to Q1.E;
		move right 0.5*(Q2.E.x-Q1.E.x);
		line up_ len*0.2;
		{
			{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
	}
	move to Q1.C;
	line from Q1.C to Q2.C;
	move left 0.5*(Q2.C.x-Q1.C.x);
	line down_ len*0.75;
	{
		move right_ 0.1*len;
		move up_ 0.7*len;
		line -> down 0.6*len;
		"$I_{OUT}$" at (Here.x + 0.25*len, Here.y + 0.3*len)
	}
	gap(down_ len); rlabel(+,V_{OUT},-);
	ground
.PE