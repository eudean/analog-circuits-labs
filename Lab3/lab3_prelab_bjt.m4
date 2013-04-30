include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	source(up_ len, V); llabel(, V_{BB},)
	line right_ len*.5;
	line right_ len*.5; 
	bi_trans(up_ len,,BCdEBU); 
	{
		move up_ len*.5;
		move right_ len
		{
			{
				move up 0.1*len then left 0.3*len
				line -> left 0.4*len
				"$I_{CC}$" at (Here.x + 0.2*len, Here.y + 0.15*len)
			}
			line left_ len;
		}
		move down_ len*1.5;
		ground
		source(up_ len, V); llabel(, V_{CC},);
		line up_ len*.5;
	}
	move down_ len*.5
	line down_ len*.5; 
	ground
.PE
