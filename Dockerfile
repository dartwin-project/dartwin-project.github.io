FROM jekyll/jekyll:latest

WORKDIR /srv/jekyll

ENV BUNDLE_PATH=/usr/local/bundle

COPY Gemfile ./

RUN bundle install

COPY . .

EXPOSE 4000

CMD ["jekyll", "serve", "--host", "0.0.0.0", "--force_polling"]

