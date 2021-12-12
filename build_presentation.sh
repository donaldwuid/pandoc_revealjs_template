#!/bin/sh

BASEDIR=$(dirname "$0")
cd "$BASEDIR"

CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`


pandoc README.md -t revealjs -s --css=custom.css -V revealjs-url=reveal.js --slide-level 3  -V slideNumber=true --template=pandoc-templates/default.revealjs -V theme=blood -V transition=slide --mathjax -o README.html