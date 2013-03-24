labeloffset := 1cm;
defaultfont := "cstt10";

verbatimtex
	\font\hlavni=csr10
	\hlavni
etex;

beginfig(1);
z0 = (0,0);
scale := 2;
label(btex bez pøípony etex, z0);
label.rt("rt",z0); label.urt("urt",z0);
label.lft("lft",z0); label.ulft("ulft",z0);
label.top("top",z0); label.llft("llft",z0);
label.bot("bot",z0); label.lrt("lrt",z0);
endfig;
end;
