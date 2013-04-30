include(libcct.m4)
.PS
cct_init

len = 0.75
Origin: Here
	dot; rlabel(,v_1(t),);
	line right_ len*.5; 
	{
		line right_ len*.25;
		amp(,len); rlabel(,A,);
		line right_ len*.25;
	}
	line up_ len*.75;
	capacitor(right_ len*1.5); rlabel(,C,); larrow(i(t));
	line down_ len*.75;
	line right_ len*.5;
	dot; rlabel(,v_2(t),);
.PE
