include(libcct.m4)
.PS
cct_init

elen = 0.75
Origin: Here
	source(up_ elen, AC); llabel(-,v_s,+)
	resistor(right_ elen); rlabel(,50\Omega,)
	resistor(down_ elen); rlabel(,R_L,)
	line to Origin
.PE