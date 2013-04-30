include(libcct.m4)
.PS
cct_init

elen = 0.75
Origin: Here
	source(up_ elen,AC); llabel(-,v_s,+)
	resistor(right_ elen); rlabel(,\unit{1}{\kilo\ohm},)
	{
		resistor(down_ to (Here, Origin))
		rlabel(,\unit{1}{\kilo\ohm},); llabel(+,v_x,-)
	}
	capacitor(right_ elen); rlabel(,\unit{1}{\pico\farad},)
	resistor(down_ Here.y-Origin.y); rlabel(,\unit{1}{\kilo\ohm},); llabel(+,v_y,-)
	line to Origin
.PE
