defaultfont := "cmtt10";

beginfig(1)
pickup pencircle scaled .4bp;

rad := 15mm;

draw fullcircle scaled rad;
label.top("fullcircle", (0, 10mm));

draw halfcircle scaled rad shifted (25mm, 0);
label.top("halfcircle", (25mm, 10mm));

draw quartercircle scaled rad shifted (50mm, 0);
label.top("quartercircle", (50mm, 9.5mm));

draw unitsquare scaled rad shifted (75mm - rad/2, 0 - rad/2);
label.top("unitsquare", (75mm, 9.5mm));

endfig;
end;
