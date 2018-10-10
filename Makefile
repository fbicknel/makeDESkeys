prefix=$$HOME

filelist := $$(cat MANIFEST)

install:
	test -d $(prefix) || mkdir -p $(prefix)/bin
	for file in $(filelist); do \
		install -m 0755 bin/$$file $(prefix)/bin; \
	done 
	ln $(prefix)/bin/makeDESkeys $(prefix)/bin/mdk
	ln $(prefix)/bin/makeDESkeys $(prefix)/bin/rdk
	ln $(prefix)/bin/makeDESkeys $(prefix)/bin/readDESkeys

uninstall:
	for file in $(filelist); do \
		rm -f $(prefix)/bin/$$file ; \
	done
	rm -f $(prefix)/bin/mdk
	rm -f $(prefix)/bin/rdk
	rm -f $(prefix)/bin/readDESkeys

reinstall: uninstall install

.PHONY: install uninstall reinstall
