defaultfont := "csr10";

verbatimtex
	\font\hlavni=csr10
	\hlavni
etex

def draw_edge(expr size, n_x, n_y) =
	path p;
	p := (0,0)--(size,0)--(size,size)--(0,size)--cycle;
	for i = 0 upto n_y - 1:
		for j = 0 upto n_x - 1: 
			draw p shifted(j*size, i*size) withcolor 0.75white;
		endfor
    endfor;
enddef;

u:=mm;

beginfig(1);

draw_edge(5u, 10, 10);

pickup penrazor xscaled 0.5mm yscaled 2mm rotated 30;

z0 = (5u,5u);
z1 = (45u,5u);
z2 = (20u,20u);

path c;
% c := z0 ..(20u,20u)..tension 1 and 1 ..z1{dir 270};
c := z0 ..(20u,20u)..{dir 270} z1;

draw c withcolor (.2,.6,.2);
drawdot z0; 
drawdot z1; 
drawdot z2; 

label.ulft(textext("น่๘"), z2);

drawdot .2 * z0 + .8 * z1;
drawdot .3 * z0 + .7 * z1;
drawdot .4 * z0 + .6 * z1;
drawdot .5 * z0 + .5 * z1;
drawdot .6 * z0 + .4 * z1;
drawdot .7 * z0 + .3 * z1;

z3 = (30u, 35u);

c := z0..z3..tension 0.75 and 1.75..z1;

draw c withcolor (.6,.6,.2);

drawdot z3;

pickup pencircle scaled .5mm;

draw z0{curl 10.1}.. z2 ..{curl 10.1}z1;

drawdot (1/2)[z0,z3];

undraw c;

endfig;
end
