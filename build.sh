#!/bin/sh

BASEDIR=$(dirname "$0")
cd "$BASEDIR"

CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`

# brew install sass/sass/sass
sass ./custom.scss ./custom.css

# bres install pandoc
pandoc README.md -t revealjs -s --css=custom.css --mathjax --template=pandoc-templates/default.revealjs -V revealjs-url=reveal.js --slide-level 3  -V slideNumber=true  -V transition=slide -V backgroundTransition=none -o README.html