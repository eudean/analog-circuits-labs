.PS
cct_init

len = 0.75
Origin: Here

	ground
	source(up_ len, AC); llabel(-, v_{IN},+)
	resistor(right_ len); rlabel(,R_S,)
	Q1: bi_trans(up_ len,,BCdEBU); rlabel(,Q_1,)
	{
		Q2: bi_tr(up_ len,,BCdEBU) with .E at Q1.C; rlabel(,Q_2,)
			line left_ len*.5 from(Q2.B.x, Q2.B.y);
			move down_ len*.5; ground
			source(up_ len*.5, V); llabel(,V_{BIAS2},)
		Q3: bi_tr(down_ len,,P) with .C at Q2.C; rlabel(,Q_3,)
			line right_ len from(Q3.B.x, Q3.B.y);
		Q4: bi_tr(down_ len,R,P); llabel(,Q_4,)
		{
			line left_ len*2.15 from(Q4.E.x + 0.15*len, Q4.E.y)
			{"$V_{CC} = \unit{12}{\volt}$" at (Here.x + len, Here.y + .1*len)}
			line left_ 0.5*len then up_ 0.3*len from (Q4.C.x, Q4.C.y+0.2*len)
			line right_ len*.75 from (Q2.C.x, Q2.C.y)
			dot
			"$v_{OUT}$" at (Here.x + 0.35*len, Here.y)
		}
		move down_ len*.5;
		line down_ len;
		resistor(down_ len); rlabel(,R_{REF},); larrow(I_{BIAS});
		line down_ len*.5;
		ground
		
	}
	move down_ len*.5;
	line down_ len*.5; 
	ground

	"(a)" at (2*len, -0.5*len)
	move right 2.5*len
	move up 0.5*len

NewOrigin:Here

	ground
	source(up_ len, AC); llabel(-, v_{IN},+)
	resistor(right_ len); rlabel(,R_S,)
	Q1: bi_trans(up_ len,,BCdEBU); rlabel(,Q_1,)
	{
		Q2: bi_tr(up_ len,,BCdEBU) with .E at Q1.C; rlabel(,Q_2,)
			line left_ len*.5 from(Q2.B.x, Q2.B.y);
			move down_ len*.5; ground
			source(up_ len*.5, V); llabel(,V_{BIAS2},)
		Q3: bi_tr(down_ len,,P) with .C at Q2.C; rlabel(,Q_3,)
			line right_ len from(Q3.B.x, Q3.B.y);
		Q4: bi_tr(down_ len,R,P); llabel(,Q_4,)
		{
			line left_ len*2.15 from(Q4.E.x + 0.15*len, Q4.E.y)
			{"$V_{CC} = \unit{12}{\volt}$" at (Here.x + len, Here.y + .1*len)}
			line left_ 0.5*len then up_ 0.3*len from (Q4.C.x, Q4.C.y+0.2*len)
			line right_ len*.75 from (Q2.C.x, Q2.C.y)
			dot
			{"$v_{OUT}$" at (Here.x + 0.35*len, Here.y)}
			capacitor(down_ len); rlabel(,C,);
			resistor(down_ len); rlabel(,R_L,); llabel(+,v_L,-)
			line down_ len*.5;
			ground
		}
		move down_ len*.5;
		line down_ len;
		resistor(down_ len); rlabel(,R_{REF},); larrow(I_{BIAS});
		line down_ len*.5;
		ground
		
	}
	move down_ len*.5;
	line down_ len*.5; 
	ground
	"(b)" at (NewOrigin.x + 2*len, -0.5*len)

.PE
