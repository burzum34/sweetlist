FROM ruby:2.7.1

RUN \
  apt-get update -qq && \
  apt-get install -y nodejs postgresql-client yarn && \
  mkdir -p /sweetlist/web

WORKDIR /sweetlist/web

COPY web/Gemfile /sweetlist/web/Gemfile
COPY web/Gemfile.lock /sweetlist/web/Gemfile.lock
COPY app /sweetlist/app

RUN bundle install

COPY web /sweetlist/web
COPY web/entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
