FROM ruby:2.4-slim
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs
