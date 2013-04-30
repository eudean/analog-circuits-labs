include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here

	ground
	source(up_ len, AC); llabel(-, v_{IN},+)
	resistor(right_ len); rlabel(, R_S,)
	Q1: bi_trans(up_ len,,BCdEBU); rlabel(,Q_1,)
	{
		move up_ len*1.5; 
		resistor(down_ len); rlabel(,R_C,); larrow(I_{BIAS1});
		line right_ len; dot; rlabel(,v_{OUT1},);
		line right_ len;
		{
			Q2: bi_trans(up_ len,,BCdEBU); rlabel(,Q_2,)
			{
				move up_ len*.5;
				line up_ len*.5; 
				{"$V_{CC} = \unit{5}{\volt}$" at (Here.x - .5*len, Here.y + .1*len)}
			}
			move down_ len*.5;
			{
				capacitor(left_ len); llabel(,C,);
				line left_ len*.25; 
				D1: dot; 
				{"$v_{OUT2}$" at (Here.x - 0.35*len, Here.y)}
				S1: speaker down_ len*.25 at (Here.x + 0.08*len, Here.y - 0.70*len);
				line to S1.In5 from D1;
				line down_ len*.10 from S1.In7;
				ground
			}
			Q3: bi_tr(up_ len,R,BCdEBU) with .C at Here; llabel(,Q_3,)
			move left_ len*.217;
			ground
			line right_ len*.5 from (Q3.B.x, Q3.B.y)
			Q4: bi_tr(up_ len,,BCdEBU); rlabel(,Q_4,)
			{
				line left_ len*.5 then down_ len*.5 from (Q4.C.x, Q4.C.y)
			}
			{
				move up_ len*2;
				{
					resistor(down_ len); rlabel(,R_{REF},); larrow(I_{BIAS2});
					line down len*.5;
				}
				line left len*4.1 from (Here.x + 0.15*len, Here.y)
			}
				move down_ len*.5;
				ground
		}
		
	}
	move down_ len*.5;
	line down_ len*.5; 
	ground
.PE
