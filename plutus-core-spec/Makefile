SRC = main.tex
DOC = main

PDF=${DOC}.pdf
BIB=${DOC}.bib

FIGS=./figures/*.tex

LATEX = pdflatex
BIBTEX = bibtex

.PHONEY: all pdf clean clean2

#----------------------------------------------------------------

all: pdf

pdf: ${PDF}

${PDF}: ${SRC} ${BIB} ${FIGS}
	${LATEX}  ${DOC}
	${BIBTEX} ${DOC}
	${LATEX}  ${DOC}   # to make sure the (cross)references are correct
	${LATEX}  ${DOC}

#figs:
#	cd ${FIGS} && ${MAKE}

#----------------------------------------------------------------

v: ${DOC}.pdf
	acroread ${DOC}.pdf

clean:
	rm -f *.aux *.log *.cov *.par *.bbl *.fls *.blg *.xml *.bcf *~
#	cd ${FIGS} && ${MAKE} clean

clean2:
	${MAKE} clean && rm -rf ${DOC}.pdf
