FROM ruby:4.0

# TODO Update label for the project.
LABEL Name="rubytemplate" \
      Version="0.1.0" \
      Description="A template for building Ruby applications in a container." \
      Maintainer="Thomas J Owens <thomas.j.owens@gmail.com>"

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

# Copy the rest of the application
COPY . /app

# Uncomment and update for web applications.
# EXPOSE 3000

# Set a default command (customize as needed)
# CMD ["ruby", "app.rb"]
