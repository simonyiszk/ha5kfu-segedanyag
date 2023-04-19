SRCS=$(wildcard *.tex)
OBJS=$(SRCS:.tex=.pdf)

%.pdf: %.tex
	pdflatex -halt-on-error $<
	pdflatex -halt-on-error $<

all: $(OBJS)

.PHONY: clean spellcheck

clean:
	rm *.aux *.toc *.lof *.log *.lot *.out $(OBJS)

spellcheck:
	hunspell -d hu_HU -t *.tex
