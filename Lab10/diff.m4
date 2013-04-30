include(libcct.m4)
.PS
cct_init
l=0.75

Origin:Here
	# Current mirror
	{ "$-V_{CC}$" at (Here.x + l, Here.y - 0.65*l) }
	{ "$V_{CC}$" at (Here.x + l, Here.y + 2.6*l) }
	{ move down 0.5*l; }
	{
		Q1: bi_tr(up_ l,R); llabel(,Q_1,)
		line right 0.5*l then down 0.3*l from (Q1.C.x, Q1.C.y-0.2*l)
	}
	{
		move up 0.5*l
		resistor(up_ l); llabel(,R_1,)
		line up l
	}
	move right 1.5*l
	Q2: bi_tr(up_ l);
	{ "$Q_2$" at (Q2.C.x + 0.15*l, Q2.B.y) }
	{ line to Q1.B from Q2.B }
	move up 0.5*l
	{ move left 0.5*l; line right l }
	move up 0.5*l
	{
		move left 0.5*l
		Q3: bi_tr(up_ l); rlabel(,Q_3,)
		move to Q3.C
		resistor(up_ l); llabel(,R_2,)
	}
	{
		move right 0.5*l
		Q4: bi_tr(up_ l,R); llabel(,Q_4,)
		move to Q4.C
		resistor(up_ l); llabel(,R_3,);
		line to (Q1.E.x, Here.y)
		line to Q1.E from Q2.E
	}
	move to Q3.B; dot
	"$v_{in+}$" at (Here.x - 0.3*l, Here.y)
	move to Q4.B; dot
	"$v_{in-}$" at (Here.x + 0.25*l, Here.y)
	line right 0.2*l from Q3.C
	gap(right_ 0.6*l); llabel(+,v_{out},-)
	line left 0.2*l from Q4.C
.PE