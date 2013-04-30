include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	gap(up_ len); llabel(-,V_{OUT},+);
	line right_ 0.66*len;
	{
		Q1: bi_trans(up_ len,,BCdEBU);
		{
			move to Q1.C
			{
				resistor(up_ len); rlabel(,R_C,); 
				{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
				line right .15*len
				line left .3*len
			}
			move to Q1.C
			line to (Q1.B.x, Q1.C.y);
			line to Q1.B;
		}
	}
	move down len;
	move right 0;
	Q2: bi_trans(up_ len,,BCdEBU);
	{
		move to Q2.C;
		line to (Q2.B.x, Q2.C.y);
		line to Q2.B;
	}
	move to Q2.E;
	ground

.PE