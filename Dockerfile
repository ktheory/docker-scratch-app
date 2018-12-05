FROM ruby:2.5-alpine

RUN gem install rack
ADD config.ru /config.ru

ARG version=hello
ENV version ${version}

EXPOSE 9292
CMD rackup -o 0.0.0.0 /config.ru
