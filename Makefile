TARGETS=cocktails.pdf
SOURCES=cocktails.tex
LATEX=pdflatex

.PHONY: all default clean

default: all

all: $(TARGETS)

%.pdf: %.tex
	$(LATEX) $<
	$(LATEX) $<
	$(LATEX) $<

clean:
	rm -f *.pdf *.log *.aux
