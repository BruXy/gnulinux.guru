TEX=context
PROJECT=python

all: Makefile \
	python_cheatsheet.pdf \
	python_cheatsheet_0001.png \
	python_cheatsheet.html \
	python_cheatsheet_include.html \
	python_cheatsheet.tar.bz2 \
	python_cheatsheet_thumbnail.png		

python_cheatsheet.pdf: python_cheatsheet.ctex python_vzhled.ctex	
	$(TEX) python_cheatsheet.ctex

python_cheatsheet_0001.png: python_cheatsheet.pdf
	pdf2png -x 512 python_cheatsheet.pdf

python_cheatsheet_thumbnail.png: python_cheatsheet_0001.png
	convert -unsharp 1.0 -resize 320x $^ PNG:$@

.SUFFIXES: .ctex

tarball: python_cheatsheet.tar.bz2

python_cheatsheet.tar.bz2:
	cd ..; tar cvjf python_cheatsheet.tar.bz2 ./python/{python_cheatsheet.ctex,python_vzhled.ctex,Makefile,python_ctext2html.sed} html_header.sed
	cp ../python_cheatsheet.tar.bz2 python_cheatsheet.tar.bz2

python_cheatsheet_include.html: python_cheatsheet.ctex python_vzhled.ctex python_ctext2html.sed
	sed -f python_ctext2html.sed python_cheatsheet.ctex > $@

python_cheatsheet.html: python_cheatsheet_include.html ../html_header.sed
	sed -f ../html_header.sed python_cheatsheet_include.html > $@

changelog:
	@echo "<ul>"
	@git log --date=short --pretty=format:"	<li> %cd :: %s</li>" -- *
	@echo "</ul>"

publish: $(PROJECT)_cheatsheet.pdf $(PROJECT)_cheatsheet.html $(PROJECT)_cheatsheet_include.html $(PROJECT)_cheatsheet_thumbnail.png $(PROJECT)_cheatsheet.tar.bz2
	cp $^ ~/HOME_DESK/Documents/html/gnulinux/

clean:
	rm -f python*.log python*.tuc

veryclean: clean
	rm -f python_cheatsheet.pdf python_cheatsheet_0001.png python_cheatsheet.tar.bz2 \
	      python_cheatsheet.html python_cheatsheet_include.html \
          python_cheatsheet_thumbnail.png		


