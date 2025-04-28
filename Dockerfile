FROM ruby:3.4

# TODO Update label for the project.
LABEL Name=rubytemplate Version=0.1.0

EXPOSE 3000

WORKDIR /app
COPY . /app

ENV BUNDLE_APP_CONFIG=".bundle"

COPY Gemfile Gemfile.lock ./
