FROM node:6.7.0
RUN npm install -g yarn

FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /Blog2
WORKDIR /Blog2

ADD Gemfile /Blog2/Gemfile
ADD Gemfile.lock /Blog2/Gemfile.lock

RUN bundle install

ADD . /Blog2