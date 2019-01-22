FROM ruby
RUN apt-get update -yqq
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
ONBUILD RUN mkdir /opt/app/
ONBUILD WORKDIR /opt/app/
ONBUILD RUN gem install rails
ONBUILD RUN rails new /opt/app/ --skip-test
ONBUILD RUN bundle install

#docker build -t ft-rails:on-build .
