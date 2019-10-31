PROJECT=text_processing
HTML_DOC_TITLE=Text Processing
TEX=context

all: Makefile $(PROJECT)_cheatsheet.pdf \
	$(PROJECT)_cheatsheet_include.html \
	$(PROJECT)_cheatsheet.html \
	$(PROJECT)_cheatsheet_0001.png \
	$(PROJECT)_cheatsheet_thumbnail.png \
	$(PROJECT)_cheatsheet.tar.bz2 \
    ../ctext2html.sed ../ctext2html_clean.sed

pdf: $(PROJECT)_cheatsheet.pdf

html: $(PROJECT)_cheatsheet_include.html $(PROJECT)_cheatsheet.html

thumb: thumbnail

thumbnail: $(PROJECT)_cheatsheet_thumbnail.png

sources: # directory for formated output rendering
	if [ ! -d sources ] ; then mkdir $@; fi

$(PROJECT)_cheatsheet.pdf: sources $(PROJECT)_style.ctex $(PROJECT)_cheatsheet.ctex
	$(TEX) $(PROJECT)_cheatsheet.ctex # 1. run will create collected sources
	$(TEX) $(PROJECT)_cheatsheet.ctex # 2. run will add them to the document

$(PROJECT)_cheatsheet_include.html: $(PROJECT)_cheatsheet.ctex $(PROJECT)_ctext2html.sed 
	sed -f ../ctext2html.sed -f $(PROJECT)_ctext2html.sed -f ../ctext2html_clean.sed $(PROJECT)_cheatsheet.ctex > $(PROJECT)_cheatsheet_include.html

$(PROJECT)_cheatsheet.html: $(PROJECT)_cheatsheet_include.html ../html_header.sed
	sed -f ../html_header.sed -e 's/HTML_DOC_TITLE/$(HTML_DOC_TITLE)/' $(PROJECT)_cheatsheet_include.html > $(PROJECT)_cheatsheet.html
	sed -i -e 's/HTML_DOC_TITLE/$(HTML_DOC_TITLE)/' $@

$(PROJECT)_tahak_include.html: $(PROJECT)_tahak_style.ctex $(PROJECT)_tahak.ctex $(PROJECT)_ctext2html.sed
	sed -f $(PROJECT)_ctext2html.sed $(PROJECT)_tahak.ctex > $(PROJECT)_tahak_include.html

$(PROJECT)_cheatsheet_0001.png: $(PROJECT)_cheatsheet.pdf
	pdf2png -x 512 -a $(PROJECT)_cheatsheet.pdf

$(PROJECT)_cheatsheet_thumbnail.png: $(PROJECT)_cheatsheet_0001.png
	convert -append -unsharp 1.0 -resize 320x $(PROJECT)_cheatsheet_0*.png PNG:$@

.SUFFIXES: .ctex

tarball: veryclean $(PROJECT)_cheatsheet.tar.bz2

$(PROJECT)_cheatsheet.tar.bz2: $(PROJECT)_style.ctex $(PROJECT)_cheatsheet.ctex Makefile $(PROJECT)_ctext2html.sed 
	cd ..; tar cvjf $@ $(PROJECT)/{*.ctex,*.sed,Makefile} html_header.sed
	mv ../$@ .

.PHONY: all pdf html clean upload publish sources

upload: publish

publish: $(PROJECT)_cheatsheet.pdf $(PROJECT)_cheatsheet.html $(PROJECT)_cheatsheet_include.html $(PROJECT)_cheatsheet_thumbnail.png $(PROJECT)_cheatsheet.tar.bz2
	cp $^ ~/HOME_DESK/Documents/html/gnulinux/

clean:
	rm -f $(PROJECT)*.log

veryclean: clean
	rm -f $(PROJECT)_cheatsheet.{pdf,html} $(PROJECT)_cheatsheet_include.html \
          $(PROJECT)_cheatsheet_0*.png $(PROJECT)_tahak.html $(PROJECT)_tahak_include.html \
          $(PROJECT)_cheatsheet_thumbnail.png $(PROJECT)_cheatsheet.tar.bz2


