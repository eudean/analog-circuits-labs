include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here

	{
		line left_ 0.5*len;
		bi_tr(down_ len,L,P);
		{
			move up_ 0.5*len;
			{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
		{
			move down_ 0.5*len;
			{
				line right_ 0.55*len;
				line up_ 0.5*len;
			}
			resistor(down_ len); llabel(,R_{C},);
			ground;
		}
	}
	
	{
		bi_tr(down_ len,R,P);
		{
			move up_ 0.5*len;
			{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
		{
			move down_ len*.5;
			line down_ len*0.25;
			gap(down_ 0.75*len);
			ground
		}
		
	}

	line right_ 0.75*len;

	{
		line right_ 0.1*len;

		{
			bi_tr(down_ len,R,P);
			{
				move up_ 0.5*len;
				{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
				line right .15*len
				line left .3*len
			}
			{
				move down_ len*.5;
				line down_ len*0.25;
				gap(down_ 0.75*len);
				ground
			}
		}
	}	

	line right_ 0.85*len;

	{
		line right_ 0.1*len;

		{
			bi_tr(down_ len,R,P);
			{
				move up_ 0.5*len;
				{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
				line right .15*len
				line left .3*len
			}
			{
				move down_ len*.5;
				line down_ len*0.25;
				gap(down_ 0.75*len);
				ground
			}
		}
	}
	
	move right_ 0.85*len;

	{"\large . . ." wid 80pt__ ht 20pt__ at (Here.x, Here.y)}

.PE