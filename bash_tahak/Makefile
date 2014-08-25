TEX=context

all: Makefile bash_tahak.pdf bash_tahak_include.html \
     bash_tahak.html bash_cheatsheet.pdf bash_cheatsheet_include.html\
     bash_cheatsheet.html bash_cheatsheet_0001.png
		
bash_tahak.pdf: bash_style.ctex bash_tahak.ctex
	$(TEX) bash_tahak.ctex

bash_cheatsheet.pdf: bash_style.ctex bash_cheatsheet.ctex
	$(TEX) bash_cheatsheet.ctex


bash_cheatsheet_include.html: bash_cheatsheet.ctex vim_ctext2html.sed
	sed -f vim_ctext2html.sed bash_cheatsheet.ctex > bash_cheatsheet_include.html

bash_cheatsheet.html: bash_cheatsheet_include.html ../html_header.sed
	sed -f ../html_header.sed bash_cheatsheet_include.html > bash_cheatsheet.html

bash_tahak_include.html: bash_style.ctex bash_tahak.ctex vim_ctext2html.sed
	sed -f vim_ctext2html.sed bash_tahak.ctex > bash_tahak_include.html

bash_tahak.html: bash_tahak_include.html ../html_header.sed
	sed -f ../html_header.sed bash_tahak_include.html > bash_tahak.html

bash_cheatsheet_0001.png: bash_cheatsheet.pdf
	pdf2png -x 512 bash_cheatsheet.pdf

.SUFFIXES: .ctex

tarball: bash_tahak.tar.bz2

bash_tahak.tar.bz2: 
	#$(shell cd ..; tar cvjf vim_cheatsheet.tar.bz2 vim_tahak/)
	cd ..; tar cvjf bash_tahak.tar.bz2 bash_tahak/
	cp ../bash_tahak.tar.bz2 bash_cheatsheet.tar.bz2

clean:
	rm -f bash*.log bash*.tuc

veryclean: clean
	rm -f bash_tahak.pdf bash_cheatsheet.{pdf,html} bash_cheatsheet_include.html  bash_cheatsheet_0001.png bash_tahak.html bash_tahak_include.html

