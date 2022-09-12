all: alwin.css index.html

alwin.css:
	bash css.sh > alwin.css

index.html: alwin.css
	cat alwin.css | bash docs.sh > index.html

clean:
	rm alwin.css index.html

.PHONY: clean
