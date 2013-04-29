.PS
cct_init

len = 0.75
Origin: Here
	source(up_ len, AC); llabel(,v_{in},)
	resistor(right_ .5*len); llabel(,\unit{1}{\kilo\ohm},)
	line right len
	resistor(down_ len); rlabel(,R_{in},); llabel(+,v_a,-)
	{
		line to Origin
	}
	move right len
	consource(up_ len, V); rlabel(,A_vv_{a},)
	resistor(right_ len); llabel(,R_{out},)
	line right 0.5*len
	resistor(down_ len); rlabel(,\unit{1}{\kilo\ohm},); llabel(+,v_{out},-)
	line left 1.5*len
	move right len
	move down 0.5*len
	line dashed left 3*len
	line dashed up 2*len
	line dashed right 3*len
	line dashed down 2*len
	
.PE