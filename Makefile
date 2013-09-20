PYTHON=/opt/local/bin/python2.7
all: _includes/pubs.html _site/index.html

_includes/pubs.html: bib/sampa-pubs.bib bib/publications.tmpl
	$(PYTHON) bibble/bibble.py $+ > $@

_site/index.html: index.html _includes/pubs.html _config.yml
	jekyll build
