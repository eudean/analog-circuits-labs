.PS
cct_init

len = 0.75
Origin: Here
	gap(up_ len); llabel(-,v_{in},+)
	line right 1.5*len
	resistor(down_ len); rlabel(,R_{in},); llabel(+,v_a,-)
	{
		line to Origin
	}
	move right len
	move up len
	consource(down_ len, I); llabel(,G_mv_{a},)
	move up len
	line right len
	{
		resistor(down_ len); llabel(,R_{out},)
		{
			line left len;
		}
		line right len;
	}
	line right len
	gap(down_ len); llabel(+,v_{out},-)
	line left 1.5*len
	move right len
	move down 0.5*len
	move right 0.125*len
	line dashed left 3.625*len
	line dashed up 2*len
	line dashed right 3.625*len
	line dashed down 2*len
	
.PE