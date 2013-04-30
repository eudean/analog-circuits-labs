include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	source(up_ len, V); llabel(, V_{BB},)
	line up_ len*.25
	resistor(right_ len); rlabel(,R_B,); larrow(I_B)
	bi_trans(up_ len,,BCdEBU); 
	{
		move up_ len*1.25; 
		{
			resistor(down_ len); rlabel(,R_C,); larrow(I_C)
		}
		line right_ len;
		move down_ len*2.5;
		ground
		line up_ len*.5;
		source(up_ len, V); llabel(, V_{CC},);
		line up_ len;
	}
	move down len*.25
	resistor(down_ len); rlabel(,R_E,); larrow(I_E)
	ground
.PE
