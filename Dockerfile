# syntax=docker/dockerfile:1

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
ARG RUBY_VERSION=3.3.5
FROM docker.io/library/ruby:$RUBY_VERSION-slim AS base

# Rails app lives here
WORKDIR /app

# Install dependencies
RUN apt-get update -qq && \
    apt-get install -y \
    nodejs \
    postgresql-client \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    build-essential \
    curl \
    libjemalloc2 \
    libpq-dev

# Set development environment
ENV RAILS_ENV="development" \
    BUNDLE_WITHOUT=""




# Throw-away build stage to reduce size of final image
FROM base AS build

# Install packages needed to build gems
RUN apt-get update -qq && \
    apt-get install -y \
    nodejs \
    postgresql-client \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    build-essential \
    curl \
    libjemalloc2 \
    libpq-dev

# Install application gems
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install && \
    rm -rf ~/.bundle/ "${BUNDLE_PATH}"/ruby/*/cache "${BUNDLE_PATH}"/ruby/*/bundler/gems/*/.git && \
    bundle exec bootsnap precompile --gemfile

# Copy the application code
COPY . /app

# Precompiling assets for production without requiring secret RAILS_MASTER_KEY
RUN SECRET_KEY_BASE_DUMMY=1 ./bin/rails assets:precompile



# Final stage for app image
FROM base

# Entrypoint prepares the database.
ENTRYPOINT ["/app/bin/docker-entrypoint"]

# Start the server by default, this can be overwritten at runtime
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
