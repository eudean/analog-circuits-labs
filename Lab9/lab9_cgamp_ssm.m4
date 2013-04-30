include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground(,,,U);
	gap(down_ len); llabel(+, v_{gs}, -);

	line right_ 0.5*len;
	{
		move right_ len;
		move down_ len;
		ground
		gap(up_ len); rlabel(-,v_{in},+);
	}
	line right_ 0.5*len;
	move up_ len;
	consource(down_ len,I); llabel(,g_{m}v_{gs},);
	line right_ len;
	resistor(up_ len); rlabel(,r_{o},);
	{
		line left_ len;
	}
	line right_ 0.5*len;
	{
		move left_ len;
		resistor(up_ len); rlabel(,R_D,);
		ground(,,,U);
	}
	line right_ 0.5*len;
	gap(down_ len); llabel(+,v_{out},-);
	ground
.PE