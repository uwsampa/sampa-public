PYTHON=python2.7

# targets that aren't filenames
.PHONY: all clean deploy

all: _includes/pubs.html _site/index.html

_includes/pubs.html: bib/sampa-pubs.bib bib/publications.tmpl
	mkdir -p _includes
	$(PYTHON) bibble/bibble.py $+ > $@

BUILDARGS :=
_site/index.html: index.html _includes/pubs.html _config.yml _layouts/default.html
	jekyll build $(BUILDARGS)

clean:
	$(RM) -r _site _includes/pubs.html

CSEHOST := bicycle.cs.washington.edu
deploy: BUILDARGS := --config _config.yml,_config_sandbox.yml
deploy: clean all
	rsync -avz -e ssh --delete _site/ $(CSEHOST):/cse/www2/sampa/new
