include(libcct.m4)
.PS
cct_init

elen = 0.75
Origin: Here
	source(up_ elen,AC); llabel(-, v_s, +)
	resistor(right_ elen); rlabel(,\unit{10}{\kilo\ohm},)
	{
	capacitor(down_ elen); rlabel(,\unit{0.01}{\micro\farad},)
	}
	line right 0.5*elen
	gap(down_ elen); llabel(+,v_o,-)
	line to Origin
.PE

