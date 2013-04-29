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
	consource(up_ len, V); rlabel(,A_vv_{a},)
	resistor(right_ len); llabel(,R_{out},)
	line right 0.5*len
	gap(down_ len); llabel(+,v_{out},-)
	line left 1.5*len
	move right len
	move down 0.5*len
	line dashed left 3*len
	line dashed up 2*len
	line dashed right 3*len
	line dashed down 2*len
	
.PE