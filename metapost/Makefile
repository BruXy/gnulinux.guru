MPOST = mptopdf

PICTURES = circle-1.pdf \
 		clip-1.pdf \
		corners-1.pdf \
		dashed-1.pdf \
		linecap-1.pdf \
		linejoin-1.pdf \
		pozice-1.pdf

#metapost_tahak-jepar.pdf: metapost_tahak.pdf
#	pdf2ps metapost_tahak.pdf
#	psnup -n 2 metapost_tahak.ps > metapost_tahak-jepar.ps
#	gs -dNOPAUSE -dBATCH -sPAPERSIZE=a4 -sDEVICE=pdfwrite \
#		-sOutputFile=metapost_tahak-jepar.pdf \
#		metapost_tahak-jepar.ps
#	rm metapost_tahak-jepar.ps metapost_tahak.ps

metapost_tahak.pdf: $(PICTURES) metapost_tahak.ctex
	texexec metapost_tahak.ctex

circle-1.pdf: circle.mp
	$(MPOST) circle.mp		

clip-1.pdf: clip.mp
	$(MPOST) clip.mp

corners-1.pdf: corners.mp
	$(MPOST) corners.mp

dashed-1.pdf: dashed.mp
	$(MPOST) dashed.mp

linecap-1.pdf: linecap.mp
	$(MPOST) linecap.mp

linejoin-1.pdf:  linejoin.mp
	$(MPOST) linejoin.mp

pozice-1.pdf: pozice.mp
	$(MPOST) pozice.mp


clean:
	rm -f *.1 *.pdf *.log *.mpo *.mpx *.mpt *.tui *-mpgraph.mp *.tmp tmpgraph.bck mpgraph.mp

