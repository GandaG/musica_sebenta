#!/usr/bin/sh

lilypond-book --output=out --pdf $1
cd out/
pdflatex ${1%.*}
pdflatex ${1%.*}
mv ${1%.*}.pdf ../${1%.*}.pdf
cd ..
rm -rf out
