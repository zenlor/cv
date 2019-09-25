SOURCE_IT=cv.it.org cv.sty
TARGETS_IT=cv.it.pdf cv.it.md README.it.md

SOURCE=cv.org cv.sty
TARGETS=cv.pdf cv.md README.md

.PHONY: clean all

all: $(TARGETS) $(TARGETS_IT)

clean:
	rm -f $(TARGETS)

$(TARGETS): $(SOURCE)
	pandoc --variable subparagraph -s $< -o $@


$(TARGETS_IT): $(SOURCE_IT)
	pandoc --variable subparagraph -s $< -o $@
