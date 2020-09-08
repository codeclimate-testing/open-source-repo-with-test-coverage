FROM ruby:2

WORKDIR /project
COPY Gemfile* ./

RUN apt-get update -y && \
    apt-get install -y curl && \
    gem install bundler:1.12.5 && \
    curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > /usr/local/bin/cc-test-reporter && \
    chmod +x /usr/local/bin/cc-test-reporter && \
    bundle install --jobs 4 --quiet
