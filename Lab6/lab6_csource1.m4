.PS
cct_init

len = 0.75
Origin: Here
	ground
	line up_ 0.25*len;
	source(up_ .5*len, V); llabel(,V_{BIAS},)
	line right_ 0.66*len;
	bi_tr(down_ len,R,P);
	{
		move up_ len*0.5;
		line up_ len*0.2;
		{
			{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
	}
	move down_ len*.5;
	line down_ len*0.5;
	{
		move right_ 0.1*len;
		move up_ 0.75*len;
		line -> down 0.6*len;
		"$I_{OUT}$" at (Here.x + 0.25*len, Here.y + 0.3*len)
	}
	
	gap(down_ len); rlabel(+,V_{OUT},-);


	ground
.PE