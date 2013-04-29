.PS
cct_init

len = 0.75
Origin: Here
	{
		move up 0.1*len then right 0.05*len
		line -> right 0.4*len
	}
	line right 0.5*len
	bi_trans(up_ len,,BCdEBU);
	{
		move up 0.75*len
		{
			move right 0.1*len then down 0.05*len
			line -> down 0.4*len
		}
		line down 0.5*len
	}
	move down_ 0.25*len
	{
		move right 0.1*len then down 0.05*len
		line -> down 0.4*len
	}
	line down 0.5*len
.PE
