#!/bin/sh

BASEDIR=$(dirname "$0")
cd "$BASEDIR"

CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`


pandoc README.md -o README.pdf --pdf-engine=xelatex