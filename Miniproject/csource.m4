.PS
cct_init

len = 0.75
Origin: Here
	{
		line left_ len;
		e_fet(down_ len,L,P,S); rlabel(,M3,);
		{
			move up_ 0.5*len;
			{"$V_{DD}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
		{
			move down_ 0.5*len;
			{
				line right_ 0.55*len;
				line up_ 0.5*len;
			}
			resistor(down_ len); llabel(,R_{BIAS},);
			ground;
		}
	}
	
	{
		e_fet(down_ len,R,P,S); llabel(,M2,);
		{
			move up_ 0.5*len;
			{"$V_{DD}$" at (Here.x, Here.y + .1*len)}
			line right .15*len
			line left .3*len
		}
		{
			move down_ len*.5;
			line down_ len*0.25;
			{
				line right_ 0.5*len;
				gap(down_ 1*len); llabel(+,V_{out},-);
				ground;
			}
			move down_ len*0.5;
			move left_ 0;
			{
				e_fet(up_ len,L,,S); rlabel(,M1,);
				{
					line left_ 0.5*len;
					move down_ 0.5*len;
					source(up_ 0.5*len, AC); llabel(-,v_{in},+);
					move down_ len;
					source(up_ 0.5*len, V); llabel(,V_{IN},);
					move down_ 0.5*len;
					ground
				}
			}
			move down_ 0.5*len;
			ground;
		}
		

	}




	

.PE
