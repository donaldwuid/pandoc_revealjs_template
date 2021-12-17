#!/bin/sh

BASEDIR=$(dirname "$0")
cd "$BASEDIR"

CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`

# brew install sass/sass/sass
sass ./custom.scss ./custom.css

# bres install pandoc
pandoc README.md -t revealjs -s --css=custom.css -V revealjs-url=reveal.js --slide-level 3  -V slideNumber=true --template=pandoc-templates/default.revealjs -V transition=slide --mathjax -o README.html