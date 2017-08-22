DOCS = index cv software awe_experiments crane_experiments
HDOCS=$(addsuffix .html, $(DOCS))

all: $(HDOCS)

%.html : %.jemdoc MENU mvukov.conf
	jemdoc -c mvukov.conf -o $@ $<

clean:
	rm -rf $(HDOCS)
