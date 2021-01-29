FROM ruby:2.6.5
RUN apt-get update && apt-get install -y \
    build-essential libpq-dev nodejs vim

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - 
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get install yarn

WORKDIR /protospace
COPY . .
RUN  gem install bundler && bundle install