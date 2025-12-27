FROM ruby:4.0

# TODO Update label for the project.
LABEL Name=rubytemplate Version=0.1.0

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

# Copy the rest of the application
COPY . /app

EXPOSE 3000

# Set a default command (customize as needed)
# CMD ["ruby", "app.rb"]
