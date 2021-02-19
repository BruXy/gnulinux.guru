# gnulinux.guru

_GNU/Linux related cheat sheets for bash, Python, ViM, networking._

>
> [Go to http://gnulinux.guru](http://gnulinux.guru)
>

## ConTeXt Installation

[Installation article on ConTeXt wiki](https://wiki.contextgarden.net/Installation)

Module `t-vim` is used for syntax highlighting, it can be installed with script
published on [ConTeXt Wiki](https://wiki.contextgarden.net/Modules#ConTeXt_LMTX).

## Create documents

Each directory has `Makefile` to create the set of following documents and
tarball with source code.

### Creating PDF

Text source is written in [ConTeXt](https://wiki.contextgarden.net/Main_Page).

### Creating bitmap thumbnails

Get convert script [pdf2png](https://raw.githubusercontent.com/BruXy/bash-utils/master/pdf2png/pdf2png).

### Export to HTML

HTML translation is done by simple `sed` script. It that each item of the
cheatsheet is written on the single line (to avoid multiline regexes).

