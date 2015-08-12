DOCS = index cv projects software applications
HDOCS=$(addsuffix .html, $(DOCS))

all: $(HDOCS) publications.html

%.html : %.jemdoc MENU mvukov.conf
	jemdoc -c mvukov.conf -o $@ $<

publications.html : publications.jemdoc mvukov_jabref.html MENU bibtex.conf
	jemdoc -c bibtex.conf -o publications.html publications.jemdoc

clean:
	rm -rf $(HDOCS)
