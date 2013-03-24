input line_makro.mp

def drawjoin(text cap)(text move)(expr xsour)(text desc) =
	x0 := xsour;
	linejoin := cap;
	label.top(desc, z0+(0, 1u));
	line(move)(tl, tlline); 
	line(move)(.4bp, black); 
	put_points(shifted (xsour, 0));
enddef;


% Rohy navazujicich car
beginfig(1); %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
	path p;
	
	z0 = (0,0);
	z1 = (1u,1u);
	z2 = (2u,0);
	p := z0--z1--z2;

	drawjoin(rounded)()(0)("rounded");
	drawjoin(beveled)(shifted z0)(3u)("beveled");
	drawjoin(mitered)(shifted z0)(6u)("mitered");
endfig;



