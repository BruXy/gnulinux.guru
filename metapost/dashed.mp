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
%pickup pencircle scaled 4mm;

path p;

z2 = (2u,0);
p := (0,0)--
z2;

draw p dashed evenly;

label.rt("evenly", z2);

draw p  shifted (0, -j) dashed withdots; % withcolor (0,1,0);

label.rt("withdots", z2+(0,-j));

draw p  shifted (0, -2j) dashed (evenly scaled 2); % withcolor (0,1,0);

label.rt(btex \tt (evenly scaled 2) etex, z2+(0,-2j));

picture cerch;
cerch := dashpattern (on 3mm off 1mm on 1mm off 1mm);

draw p  shifted (0, -3j) dashed cerch; % withcolor (0,1,0);

label.rt(btex \rm vlastní def.: \tt cerch etex, z2+(0,-3j));

endfig;
end;
