.PS
cct_init

len = 0.75
Origin: Here
	{
		line left_ len;
		bi_tr(down_ len,L,P); rlabel(,Q2,);
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
		bi_tr(down_ len,R,P); llabel(,Q3,);
		{
			move up_ 0.5*len;
			{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
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
				bi_tr(up_ len,L); rlabel(,Q1,);
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
			resistor(down_ len); rlabel(,R_E,);
			ground;
		}
		

	}




	

.PE
