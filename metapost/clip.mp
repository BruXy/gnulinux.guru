% Tvary casr v krajnich bodech

defaultfont := "cstt10";
labeloffset := 2mm;
u := cm;
j := 4mm;

verbatimtex
	\font\tt=cstt10
	\font\rm=csr10
etex

beginfig(1);

picture pic_kruh; pic_kruh := nullpicture;

path kruh;
kruh := fullcircle scaled 2cm;
filldraw kruh withcolor 0.75white;

addto pic_kruh also currentpicture;

%addto pic_kruh doublepath kruh;

path ctverecek;
ctverecek := unitsquare scaled 1cm;
draw ctverecek;


label.rt("unitsquare", urcorner ctverecek);

label.bot("fullcircle", 1/2[llcorner kruh, lrcorner kruh] - (0, -.5u) );

z1 = 1/2[urcorner kruh, lrcorner kruh];


label.rt(btex \hskip1em \tt clip $\rightarrow$ etex, z1); 


clip pic_kruh  to ctverecek ;

draw pic_kruh shifted (3.5cm, y1);


setbounds currentpicture to boundingbox currentpicture enlarged 1mm;

endfig;
end;
