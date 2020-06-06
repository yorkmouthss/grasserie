FROM ruby:alpine
RUN apk update && apk add build-base nodejs ruby-dev
WORKDIR /src
RUN gem install bundler
COPY Gemfile .
RUN bundle install
#COPY . /src
CMD jekyll serve -w --force_polling -H 0.0.0.0 --livereload