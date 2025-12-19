FROM ruby:3.4-slim-trixie

RUN apt-get update && apt-get install -y \
    make \
    gcc \
    && rm -rf /var/lib/apt/lists/*


RUN gem install html2rss

CMD make
