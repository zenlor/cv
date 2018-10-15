cv.pdf: cv.org
	pandoc --variable subparagraph -s cv.org -o cv.pdf

clean:
	rm -r *.pdf

all: cv.pdf

.PHONY: clean all
