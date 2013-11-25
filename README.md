Sampa group website
===================

This site uses [Jekyll][] and [bibble][] to generate a static Sampa website
complete with publications, personnel, and news.


Editing
-------

Most pages are just Markdown files that you can edit directly. People are
listed in `_data/people.yml` and the news is generated from `_data/news.yml`.

Try editing directly in GitHub! It's like magic.


Building and Deploying
----------------------

The requirements for building the site are:

* [Jekyll][]: run `gem install jekyll`
* [Pybtex][]: run `pip install pybtex`

`make` compiles the bibliography and the website content to the `_site`
directory. To preview the site, run `jekyll serve`` and head to
http://0.0.0.0:4000.

To upload a new version of the site via rsync over ssh, type `make deploy`. A web hook does this automatically when you push to GitHub.

If you use an alternative Python when building the bibliography, use `make
PYTHON=/path/to/python`.

[Jekyll]: http://jekyllrb.com/
[bibble]: https://github.com/sampsyo/bibble/
[pybtex]: http://pybtex.sourceforge.net
