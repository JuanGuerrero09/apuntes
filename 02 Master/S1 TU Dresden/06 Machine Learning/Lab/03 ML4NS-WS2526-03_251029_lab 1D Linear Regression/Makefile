# Note: the following requires `jupytext` to be installed!

FILLEDFILES=$(wildcard *_filled.py)
PYFILES=$(FILLEDFILES:%_filled.py=%.py)
NOTEBOOKS=$(PYFILES:%.py=%.ipynb) $(FILLEDFILES:%.py=%.ipynb)

AUXFILES=$(wildcard *txt) $(wildcard *md) $(wildcard *csv)
TARGETS=$(NOTEBOOKS)

all: ${TARGETS} $(FILLEDFILES)


%.py: %_filled.py
	@sed -e '/.*=.*student-only/s/\(^.*=\).*/\1 = .../' $< > $@
	@sed -i -e '/student-only/s/.*/.../' $@

%.ipynb: %.py
	@jupytext --update --to ipynb $<


.PRECIOUS: $(PYFILES)
