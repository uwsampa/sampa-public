#############################################################
# Dependencies for running `jekyll build` for `sampa-public`
#
# Note: for now, we aren't using this because it's too hard
# to figure out permissions on files created by docker in
# shared volumes.
#############################################################
FROM ubuntu:15.10
MAINTAINER Brandon Holt <holt.bg@gmail.com>

VOLUME /repo
WORKDIR /repo

RUN apt-get update && \
    apt-get install -y \
      ruby ruby-dev \
      python \
      python-pip \
      make \
      zlib1g-dev

RUN gem install jekyll
RUN gem install github-pages
RUN pip install pybtex jinja2

CMD ["make", "clean", "all"]
