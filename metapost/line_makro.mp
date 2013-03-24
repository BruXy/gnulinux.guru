def line(text t)(expr size,col) =
	draw p t withpen pencircle scaled size withcolor col;
enddef;

def bod(text t) =
	draw p t withpen pencircle scaled .4bp;
enddef;

def put_points(text t) =
	for i = z0,z1,z2:
		if i = z0:
			drawdot i withpen bodik;
		else: 
			drawdot i t withpen bodik;
		fi;
  	endfor;
enddef;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

defaultfont := "cstt10";
u := cm;

% uzka carka
nl := .4bp;
pen bodik;
bodik := pensquare scaled 2nl;

color tlline;
tlline := 0.7white;

tl := 3mm;
%drawdot (0,0) shifted (-1cm, 0) withpen bodik;


