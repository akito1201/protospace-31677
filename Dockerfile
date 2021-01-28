FROM ruby:2.6.5
RUN apt-get update && apt-get install -y \
    build-essential libpq-dev nodejs yarn
WORKDIR /protospace
COPY . .
RUN  gem install bundler && bundle install