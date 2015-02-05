PACKAGES = $(shell ls rules/ | cut -f 1 -d .)

all: $(PACKAGES)

$(PACKAGES):
	./scripts/build $@ packages/$@.tar.lz 2>&1 | tee -a logs/$@.log

include ./Makefile.deps
