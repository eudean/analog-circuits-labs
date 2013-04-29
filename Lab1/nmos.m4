.PS
cct_init

elen = 0.75
Origin:Here
	source(up_ elen,V); llabel(,V_{GS},)
	line right 0.5*elen
	mosfet(up_ elen,L,FQTDSuB,)
	{
    	"G" at last [].G above
	"S " at last [].S rjust
	"D " at last [].D rjust
	" B" at last [].B ljust
	}
	move down 0.5*elen
	line to (Here,Origin)
	move up 1.5*elen
	line right elen
	{
		move to (Here.x - 0.3*elen, Here.y + 0.1*elen)
		line -> left 0.4*elen
		"$I_D$" at (Here.x + 0.2*elen, Here.y + 0.15*elen)
	}
	reversed(`source',down_ to (Here,Origin),V); llabel(,V_{DD},)
	line to Origin
	"(a)" at (elen, -0.25*elen)
	move right 3*elen
	move up 0.2*elen
NewOrigin:Here
	source(up_ elen,V); llabel(,V_{GS},)
	line right 0.5*elen
	mosfet(up_ elen,L,FTDdS,)
	{
	"G" at last [].G above
	"S " at last [].S rjust
	"D " at last [].D rjust
	}
	move down 0.5*elen
	line to (Here, NewOrigin)
	move up 1.5*elen
	line right elen
	{
		move to (Here.x - 0.3*elen, Here.y + 0.1*elen)
		line -> left 0.4*elen
		"$I_D$" at (Here.x + 0.2*elen, Here.y + 0.15*elen)
	}
	reversed(`source',down_ to (Here,NewOrigin),V); llabel(,V_{DD},)
	line to NewOrigin
	"(b)" at (NewOrigin.x + elen, -0.25*elen)
.PE
