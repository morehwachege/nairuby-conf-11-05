FROM ruby:3.1.2-alpine

RUN apt-get update -qq && apt-get install -y postgresql-client
RUN apt install postgresql-contrib libpq-dev -y

RUN bundle config --global frozen 1

WORKDIR /app


ENV RAILS_ENV production
ENV RAILS_LOG_TO_STDOUT true

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .


RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]