FROM ruby:3.3.1
RUN gem install jekyll
WORKDIR /app
COPY . .
EXPOSE 4000

CMD ["jekyll", "serve", "--host", "0.0.0.0", "--watch", "--force_polling"]