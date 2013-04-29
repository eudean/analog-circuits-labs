.PS
cct_init

len = 0.75
Origin: Here
	source(up_ len, I); llabel(,i_{in},)
	line right .5*len
	{
		resistor(down_ len); llabel(,R_{S},)
	}
	line right 1.5*len
	resistor(down_ len); rlabel(,R_{in},); larrow(i_{a})
	{
		line to Origin
	}
	move right len
	consource(up_ len, I); llabel(,A_i i_{a},)
	line right .5*len
	{
		resistor(down_ len); llabel(,R_{out},)
	}
	line right len
	resistor(down_ len); rlabel(,R_L,); larrow(i_{out});
	line left 1.5*len
	move right len
	move down 0.5*len
	line dashed left 3*len
	line dashed up 2*len
	line dashed right 3*len
	line dashed down 2*len
	
.PE