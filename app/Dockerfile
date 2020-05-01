FROM ruby:2.7.1

RUN \
  apt-get update -qq && \
  apt-get install -y postgresql-client && \
  mkdir -p /sweetlist

WORKDIR /sweetlist

COPY Gemfile* ./

RUN bundle install
