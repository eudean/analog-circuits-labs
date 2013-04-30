include(libcct.m4)
.PS
cct_init
l=0.75
Origin:Here
	A: opamp(right_) with .In1 at Here
	move to A.In1
	line left 0.2*l
	resistor(left_ l); rlabel(,1k\Omega,)
	dot
	"$v_{in}$" at (Here.x - 0.15*l, Here.y)
	move to A.In1
	move left 0.2*l
	line up 0.6*l
	resistor(right_ l); llabel(,1k\Omega,)
	line from Here to (A.Out.x + 0.2*l, Here.y);
	line from Here to (A.Out.x + 0.2*l, A.Out.y);
	move to A.Out
	line right 0.5*l
	dot
	"$v_{out}$" at (Here.x + 0.2*l, Here.y)
	move to A.In2
	line left 0.2*l
	line down 0.3*l
	ground(at Here)
	move to A.E1
	line up 0.2*l
	dot
	"$V_{CC}$" at (Here.x, Here.y+0.1*l)
	move to A.E2
	line down 0.2*l
	dot
	"$-V_{CC}$" at (Here.x, Here.y-0.2*l)
.PE