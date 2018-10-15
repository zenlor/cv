cv.pdf: cv.org cv.sty
	pandoc --variable subparagraph -s cv.org -o cv.pdf

clean:
	rm -r *.pdf

all: cv.pdf

.PHONY: clean all
