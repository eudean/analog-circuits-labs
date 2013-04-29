.PS
cct_init

len = 0.75
Origin: Here
	ground
	source(up_ .5*len, V); llabel(,V_{B},)
	line right len
	bi_trans(up_ len,,BCdEBU);
	{
		move up len*.5;
		resistor(up_ len); llabel(,R_{C},); rarrow(i_{out});
		{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
		line right .15*len
		line left .3*len
	}
	move down len*.5; 
	reversed(`source', down_ len, I); llabel(,i_{in},)
	ground
.PE