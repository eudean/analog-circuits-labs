include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	resistor(up_ len); rlabel(,R_2,);
	{
		line right_ 0.5*len;
		gap(down_ 0.75*len); llabel(+,V_{OUT},-);
		ground
	}
	resistor(up_ len); rlabel(,R_1,);
	{"$V_{CC}$" at (Here.x, Here.y + .1*len)}
	line right .15*len
	line left .3*len
.PE