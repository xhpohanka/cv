TARGET = cv.pdf
SOURCES = cv.tex m-cv.tex

$(TARGET) : $(SOURCES) Makefile 

all: $(TARGET)

%.pdf : %.tex
	texmfstart texexec $<


clean:
	texmfstart texutil --purge --all