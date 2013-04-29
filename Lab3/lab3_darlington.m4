.PS
cct_init

len = 0.75
Origin: Here
	ground
	source(up_ len, V); llabel(,V_{BB},); rlabel(,\unit{1.2}{\volt},); 
	line right_ 0.5*len;
	Q1: bi_trans(up_ len,,BCdEBU); rlabel(,Q_1,); 
	{
		{	
			move up_ 0.5*len; 
			{
				"$V_{CC} = \unit{3}{\volt}$" at (Here.x + 0.35*len, Here.y + 0.1*len)
			}
			line down_ 0.25*len
			
		}
		move down_ len*.5;
		line right_ len*.25;
		Q2: bi_trans(up_ len,,BCdEBU); rlabel(,Q_2,);
		{
			move up_ len;
			{
				line from (Here.x, Here.y) to (Q1.C.x, Here.y)
			}
			line down_ 0.5*len
		}
		move down_ len*.25;
		line down_ len*.25; 
		ground
	}
	move down len*.5

.PE
