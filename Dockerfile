FROM ruby:3.0.1
COPY . ./app 
WORKDIR /app 
RUN bundle install 
EXPOSE 9292 
CMD ["puma"] 