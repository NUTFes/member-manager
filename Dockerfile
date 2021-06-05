FROM ruby:2.7.1

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
      && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
      && apt-get update -qq \
      && apt-get install -y nodejs yarn \
      && mkdir /myapp

WORKDIR /myapp
COPY ./web/Gemfile /myapp/Gemfile
COPY ./web/Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY ./web /myapp

