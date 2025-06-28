#!/bin/sh

BASE=main

rm ${BASE}.pdf
xelatex -no-pdf --interaction=nonstopmode ${BASE}
bibtex ${BASE}
# makeglossaries ${BASE}
xelatex -no-pdf --interaction=nonstopmode ${BASE}
xelatex --interaction=nonstopmode ${BASE}

okular "${BASE}.pdf"
