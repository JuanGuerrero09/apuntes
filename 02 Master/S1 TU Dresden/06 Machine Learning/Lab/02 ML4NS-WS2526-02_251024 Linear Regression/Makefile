# Note: the following requires `jupytext` to be installed!

PYFILES=$(wildcard *py)
NOTEBOOKS=$(PYFILES:%.py=%.ipynb)

AUXFILES=$(wildcard *txt) $(wildcard *md) $(wildcard *csv)
TARGETS=$(NOTEBOOKS)

all: ${TARGETS}

%.ipynb: %.py
	@jupytext --update --to ipynb $<
