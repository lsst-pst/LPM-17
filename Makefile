REPORT=LSSTSRD
LATEX=latex
GLOSS=makeglos.pl
DVIPS=dvips
PS2PDF=ps2pdf
RMTEX=rm -f *.dvi *.aux *.log *.blg *.bbl

SRCS=$(wildcard *.tex)
FIGS=$(wildcard *.ps)

all: $(REPORT).pdf

$(REPORT).pdf: $(SRCS) $(FIGS) 
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)
	$(GLOSS) $(REPORT).glo
	$(LATEX) $(REPORT)
	$(DVIPS) -t letter -o $(REPORT).ps $(REPORT).dvi 
	$(PS2PDF) $(REPORT).ps $(REPORT).pdf
	$(RMTEX)

