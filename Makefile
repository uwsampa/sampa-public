PYTHON=python2.7
all: _includes/pubs.html _site/index.html

_includes/pubs.html: bib/sampa-pubs.bib bib/publications.tmpl
	mkdir -p _includes
	$(PYTHON) bibble/bibble.py $+ > $@

_site/index.html: index.html _includes/pubs.html _config.yml
	jekyll build
