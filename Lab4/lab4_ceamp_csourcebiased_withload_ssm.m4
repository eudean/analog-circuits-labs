include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	ground
	gap(up_ len); llabel(-, v_{in}, +);
	line right_ len;
	resistor(down_ len); rlabel(,r_{\pi},); llabel(+,v_{\pi},-);
	{	
		line left_ len;
	}
	line right_ len;
	move up_ len;
	consource(down_ len,I); llabel(,g_{m}v_{\pi},);
	line right_ len;
	resistor(up_ len); rlabel(,r_{o},);
	{
		line left_ len;
	}
	line right_ len;
	{
		line right_ len;
		gap(down_ len); llabel(+,v_{out},-);
		ground
	}
	resistor(down_ len); llabel(,R_{L},);
	{
		line left_ len;
	}
	line right_ len;
.PE