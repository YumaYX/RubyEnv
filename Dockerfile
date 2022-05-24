FROM ruby:3.1

# throw errors if Gemfile has been modified since Gemfile.lock
#RUN bundle config --global frozen 1

RUN apt-get update

RUN groupadd rgroup && useradd -g rgroup ruser
RUN mkdir /home/ruser
COPY ./config/gemrc /home/ruser/.gemrc
RUN chown -R ruser:rgroup /home/ruser
USER ruser

WORKDIR /usr/src/rubybox
