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
		rm $(prefix)/bin/$$file ; \
	done
	rm $(prefix)/bin/mdk
	rm $(prefix)/bin/rdk
	rm $(prefix)/bin/readDESkeys

reinstall: uninstall install

.PHONY: install uninstall reinstall
