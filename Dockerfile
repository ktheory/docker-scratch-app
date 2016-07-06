FROM ruby:2.3-alpine

RUN gem install rack
ADD config.ru /config.ru

EXPOSE 9292
CMD rackup -o 0.0.0.0 /config.ru
