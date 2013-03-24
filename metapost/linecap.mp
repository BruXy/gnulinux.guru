input line_makro.mp

def drawcap(text cap)(text move)(expr xsour)(text desc) =
	x0 := xsour;
	linecap := cap;
	label.top(desc, z0+(0, 1u));
	line(move)(tl, tlline); 
	line(move)(.4bp, black); 
	put_points(shifted (xsour, 0));
enddef;

% Tvary cas v krajnich bodech
beginfig(1); %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
	path p;
	
	z0 = (0,0);
	z1 = (1u,1u);
	z2 = (2u,0);
	p := z0--z1--z2;

	drawcap(rounded)()(0)("rounded");
	drawcap(butt)(shifted z0)(3u)("butt");
	drawcap(squared)(shifted z0)(6u)("squared");
endfig;


end;
