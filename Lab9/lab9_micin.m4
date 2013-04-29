.PS
cct_init

len = 0.75
Origin: Here
	ground(at Here)
	line up 0.5*len
	M: microphone(L);
	{"Microphone" at (Here.x-0.7*len, M.In2.y)}
	line up 0.5*len
	dot
	{
		line right_ 0.5*len;
		gap(down_ 0.75*len); llabel(+,V_{OUT},-);
		ground
	}
	resistor(up_ len); rlabel(,R_1,);
	{"$V_{S}$" at (Here.x, Here.y + .1*len)}
	line right .15*len
	line left .3*len
.PE