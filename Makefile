PYTHON=python3

# targets that aren't filenames
.PHONY: all clean deploy

all: _includes/pubs.html _site/index.html _site/wacas14/index.html

BUILDARGS :=
_site/index.html _site/wacas14/index.html:
	jekyll build --config _config.yml $(BUILDARGS)

_includes/pubs.html: bib/sampa-pubs.bib bib/publications.tmpl
	mkdir -p _includes
	bibble $+ > $@

_site/index.html: $(wildcard *.html) _includes/pubs.html _config.yml \
	_layouts/default.html
_site/wacas14/index.html: $(wildcard wacas14/*.md) _config.yml \
	_layouts/wacas.html

clean:
	$(RM) -r _site _includes/pubs.html

CSEHOST := bicycle.cs.washington.edu
RSYNCARGS := --compress --recursive --checksum --itemize-changes \
	--delete -e ssh --perms --chmod=ug+rw

rsync:
	rsync $(RSYNCARGS) _site/ $(CSEHOST):/cse/www2/sampa/new

deploy: clean all rsync
