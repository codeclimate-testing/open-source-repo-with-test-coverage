FROM ruby:2

WORKDIR /project
COPY Gemfile* ./

RUN apt-get update -y && \
    apt-get install -y curl && \
    curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > /usr/local/bin/cc-test-reporter && \
    chmod +x /usr/local/bin/cc-test-reporter && \
    bundle install --jobs 4 --quiet
