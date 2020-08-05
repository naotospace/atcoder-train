FROM ruby:alpine3.12

RUN gem install rspec rubocop
RUN mkdir /app
WORKDIR /app