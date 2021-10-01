FROM ubuntu:20.04
MAINTAINER Brandon Holt <holt.bg@gmail.com>
MAINTAINER Emircan ERKUL <contact@emircanerkul.com>

VOLUME /repo
WORKDIR /repo

RUN apt-get update && \
    apt-get install -y \
      ruby ruby-dev \
      python \
      pip \
      make \
      zlib1g-dev

RUN gem install jekyll
RUN gem install github-pages
RUN pip install pybtex jinja2

CMD ["make", "clean", "all"]
