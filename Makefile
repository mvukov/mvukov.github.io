DOCS = index cv software applications
HDOCS=$(addsuffix .html, $(DOCS))

all: $(HDOCS)

%.html : %.jemdoc MENU mvukov.conf
	jemdoc -c mvukov.conf -o $@ $<

clean:
	rm -rf $(HDOCS)
