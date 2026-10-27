
SOURCES := $(wildcard *.tex)
NAMES   := $(SOURCES:%.tex=%)
TARGETS := $(SOURCES:%.tex=%.pdf)

all: $(TARGETS)

$(NAMES): %: %.pdf

%.pdf: %.tex poeme.sty
	@lualatex --jobname=$* $<

clean:
	@rm -fv *.aux *.log

distclean: clean
	@rm -fv *.pdf

.PHONY: all clean $(NAMES) distclean
