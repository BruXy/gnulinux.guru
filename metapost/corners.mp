% Tvary casr v krajnich bodech

defaultfont := "cstt10";
labeloffset := 2mm;
u := cm;
j := 4mm;

verbatimtex
	\font\tt=cstt10
	\font\rm=csr10
etex

beginfig(1)
pickup pencircle scaled 1mm;

path p;

z0 = (0,0);
z1 = (1.5u,1u);
z2 = (.5u,1u);
z3 = (2u,0);

p := z0{right}..z1..z2..{right}z3 ;

draw p withcolor 0.75white;


dotlabel.llft("llcorner", llcorner p);
dotlabel.lrt("lrcorner", lrcorner p);
dotlabel.urt("urcorner", urcorner p);
dotlabel.ulft("ulcorner", ulcorner p);
dotlabel.bot("center", center p);

pickup defaultpen;

for i = z0,z1,z2,z3:
drawdot i withpen pencircle scaled 0.2mm withcolor red;
endfor;

endfig;
end;
