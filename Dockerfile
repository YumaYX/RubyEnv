FROM ruby:3.1

# throw errors if Gemfile has been modified since Gemfile.lock
#RUN bundle config --global frozen 1

RUN apt-get update

RUN groupadd ruser && useradd -g ruser ruser
USER ruser

COPY ./config/gemrc /root/.gemrc

WORKDIR /usr/src/rubybox

