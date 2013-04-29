.PS
cct_init

len = 0.75
Origin: Here
	ground
	source(up_ len, V); llabel(, V_{BIAS},)
	source(right_ len, AC); rlabel(-, v_{in},+)
	resistor(right_ len); rlabel(,R_S,)
	bi_trans(up_ len,,BCdEBU); 
	{
		move up_ len*1.5; 
		{
			{"$V_{CC} = \unit{5}{\volt}$" at (Here.x - .05*len, Here.y + .1*len)}
			line left .15*len
			line right .3*len
		}
		resistor(down_ len); rlabel(,R_C,); larrow(I_{BIAS});
		line right_ len; dot; llabel(,v_{OUT},);
		line down_ len*.5; 
		capacitor(down_ len); rlabel(,C_M,);
		ground
	}
	move down_ len*.5;
	line down_ len*.5; 
	ground
.PE
