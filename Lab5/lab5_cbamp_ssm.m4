include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	gap(up_ len); llabel(-, v_{in}, +);
	line right_ len;
	resistor(down_ len); rlabel(,r_{\pi},); llabel(+,v_{\pi},-);

	line right_ 0.5*len;
	{
		move down_ len;
		ground
		source(up_ len, I); rlabel(,i_{in},);
	}
	line right_ 0.5*len;
	move up_ len;
	consource(down_ len,I); llabel(,g_{m}v_{\pi},);
	line right_ len;
	resistor(up_ len); rlabel(,r_{o},);
	{
		line left_ len;
	}
	line right_ 0.5*len;
	{
		resistor(up_ len); rlabel(,R_C,);
		ground(,,,U);
	}
	line right_ 0.5*len;
	gap(down_ len); llabel(+,v_{out},-);
	ground
.PE