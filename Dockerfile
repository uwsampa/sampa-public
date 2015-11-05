#######################################################
# Base image with my common software and configuration
#######################################################
FROM ubuntu:14.10
MAINTAINER Brandon Holt <holt.bg@gmail.com>

VOLUME /repo
WORKDIR /repo

RUN apt-get update && \
    apt-get install -y \
      ruby-dev \
      python \
      python-pip \
      make \
      zlib1g-dev

RUN gem install jekyll
RUN gem install github-pages
RUN pip install pybtex

CMD ["make"]
