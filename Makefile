
SOURCES := $(wildcard *.tex)
TARGETS := $(SOURCES:%.tex=%)

all: $(TARGETS)

%: %.tex
	@lualatex --jobname=$@ $<

clean:
	@rm -fv *.aux *.log

distclean: clean
	@rm -fv *.pdf
