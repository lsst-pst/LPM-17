REPORT=LSSTSRD
LATEX=pdflatex
GLOSS=./makeglos.pl
DVIPS=dvips
PS2PDF=ps2pdf
BIBTEX=bibtex
RMTEX=rm -f *.aux *.log *.blg *.bbl

SRCS=$(wildcard *.tex)
FIGS=$(wildcard *.ps)

all: $(REPORT).pdf

$(REPORT).pdf: $(SRCS) $(FIGS)
	$(LATEX) $(REPORT)
	$(BIBTEX) $(REPORT)
	$(LATEX) $(REPORT)
	$(GLOSS) $(REPORT).glo
	$(LATEX) $(REPORT)
	$(RMTEX)
