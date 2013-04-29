.PS
cct_init

len = 0.75
Origin: Here

	ground
	source(up_ len, V); llabel(, V_{BIAS1},)
	source(right_ len, AC); rlabel(-,v_{in},+)
	resistor(right_ len); rlabel(,R_S,)
	Q1: bi_trans(up_ len,,BCdEBU); rlabel(,Q_1,)
	{
		Q2: bi_tr(up_ len,,BCdEBU) with .E at Q1.C; rlabel(,Q_2,)
		{
			line left_ len*.5 from(Q2.B.x, Q2.B.y);
			move down_ len*.5; ground
			source(up_ len*.5, V); llabel(,V_{BIAS2},)
		}
		move up_ len*1.5; 
		{"$V_{CC} = \unit{5}{\volt}$" at (Here.x, Here.y + .1*len)}
		{line right_ len*.3 from (Here.x - len*0.15, Here.y)}
		source(down_ len, I); rlabel(, I_{SUP},)
		
			line right_ len*.75 from (Q2.C.x, Q2.C.y)
			dot
			"$v_{OUT}$" at (Here.x + 0.35*len, Here.y)
				
	}
	move down_ len*.5;
	line down_ len*.5; 
	ground


.PE
