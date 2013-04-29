.PS
cct_init

len = 0.75
Origin: Here
	{
		move up 0.1*len then right 0.05*len
		line -> right 0.4*len
		"$I_{B1}$" at (Here.x - 0.2*len, Here.y + 0.15*len)
	}
	line right 0.5*len
	bi_trans(up_ len,,BCdEBU); rlabel(,Q_1,); 
	{
		move down_ 0.5*len;
		line right_ 0.5*len; 
		bi_trans(up_ len,,BCdEBU); rlabel(,Q_2,);
		{			
			move up_ len;
			{
				move right 0.1*len then down 0.175*len
				line -> down 0.4*len
				"$I_{C2}$" at (Here.x + 0.2*len, Here.y + 0.2*len)
			}
			line down_ 0.75*len
		}	
		move down_ 0.25*len;
		line down_ 0.25*len;
	}
	move up_ 0.5*len
	line down_ 0.25*len;

.PE
