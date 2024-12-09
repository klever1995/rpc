FROM ruby:3.3

WORKDIR /usr/src/app

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 4567

CMD ["ruby", "server.rb"]
