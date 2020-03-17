#!/bin/sh

BASEDIR=$(dirname "$0")
cd "$BASEDIR"

CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`


pandoc main.md -t revealjs -s --slide-level 2 -V slideNumber=true --template=template/default.html -V theme=blood -V transition=slide --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -o main.html