prefix=$$HOME

filelist := $$(cat MANIFEST)

install:
	test -d $(prefix) || mkdir -p $(prefix)/bin
	for file in $(filelist); do \
		install -m 0755 $$file $(prefix)/bin; \
	done 

uninstall:
	for file in $(filelist); do \
		rm $(prefix)/bin/$$file ; \
	done

.PHONY: install
