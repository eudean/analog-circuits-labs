include(libcct.m4)
.PS
cct_init
l=0.75
Origin:Here
	ground(at Origin)
	source(up_ 2*l,AC); llabel(-,v_s,+); rlabel(,\unit{1}{\volt},)
	resistor(right_ l); rlabel(,R_1,); llabel(,\unit{1}{\kilo\ohm},);
	{
		resistor(down_ l); rlabel(,R_2,); llabel(,\unit{500}{\ohm},)
		{
			resistor(right_ l); rlabel(,R_3,); llabel(,\unit{800}{\ohm},)
		}
		resistor(down_ l); rlabel(,R_4,); llabel(,\unit{200}{\ohm},);
	}
	resistor(right_ l); rlabel(,R_5,); llabel(,\unit{1.5}{\kilo\ohm},)
	resistor(down_ l); rlabel(,R_6,); llabel(,\unit{700}{\ohm},)
	{
		line right 0.5*l
		dot
		"$v_o$" at (Here.x + 0.2*l, Here.y)
	}
	resistor(down_ l); rlabel(,R_7,); llabel(,\unit{100}{\ohm},)
	resistor(left_ l); llabel(,R_8,); rlabel(,\unit{900}{\ohm},)
	line to Origin
.PE