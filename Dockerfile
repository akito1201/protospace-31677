FROM ruby:2.6.5
RUN apt-get update && apt-get install -y \
    build-essential libpq-dev nodejs yarn mysql-devel
WORKDIR /protospace
COPY . .
RUN bundle install