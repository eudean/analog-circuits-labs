include(libcct.m4)
.PS
cct_init

elen = 0.75
Origin: Here
	source(up_ elen,V); llabel(,\unit{2}{\volt},)
	resistor(right_ elen); rlabel(,\unit{10}{\kilo\ohm},)
	{
	resistor(down_ elen); rlabel(,\unit{20}{\kilo\ohm},)
	}
	line right 0.5*elen
	gap(down_ elen); llabel(+,V_O,-)
	line to Origin
.PE

