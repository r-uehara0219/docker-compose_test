FROM ruby:2.3.3

LABEL description="Docker-Rails test by hara"

# -qq Show no log, except for errors
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp
