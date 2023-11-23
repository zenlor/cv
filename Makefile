SOURCE=cv.org cv.sty
TARGETS=cv.pdf cv.md README.md

.PHONY: clean all

all: $(TARGETS)

clean:
	rm -f $(TARGETS)

$(TARGETS): $(SOURCE)
	pandoc --variable subparagraph -s $< -o $@
