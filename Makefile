PACKAGES = $(shell ls rules/ | cut -f 1 -d .)

all: $(PACKAGES)

$(PACKAGES):
	./scripts/build $@

include ./Makefile.deps
