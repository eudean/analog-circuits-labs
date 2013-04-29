.PS
cct_init

elen = 0.75
Origin: Here
	source(up_ elen, V); llabel(,\unit{1}{\volt}, )
	resistor(right_ elen); rlabel(,\unit{100}{\ohm},)
	{
	diode(down_ elen);
	}
	line right 0.5*elen
	gap(down_ elen); llabel(+, V_O, -)
	line to Origin
.PE 