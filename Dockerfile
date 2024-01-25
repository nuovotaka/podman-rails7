FROM ruby:3.1

SHELL ["/bin/bash", "-c"]

WORKDIR /usr/src/app

RUN ruby -v \
  && bundler --version \
  && bundle init \
  && bundle add rails \
  && bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

RUN bundle exec rails new . --force --skip-git --minimal
RUN bundle config --global frozen 1

ENV RAILS_ENV=development
RUN bundle exec rails db:create

EXPOSE 3000
CMD bundle exec rails server -b 0.0.0.0 -p 3000
