% Tvary casr v krajnich bodech

defaultfont := "cstt10";
u := cm;

beginfig(1)
pickup pencircle scaled 4mm;

path p;

p := (0,0)--(1u,1u)--(2u,0);

z0 = (0,0);
linecap := rounded;
label.top("rounded", z0+(0, 1u));
draw p withcolor 0.5white;

x0 := 3u;
linecap := butt;
label.top("butt", z0+(0, 1u));
draw p shifted z0 withcolor 0.5white;

x0 := 6u;
linecap := squared;
label.top("squared", z0+(0, 1u));
draw p shifted z0 withcolor 0.5white;


endfig;
end;
