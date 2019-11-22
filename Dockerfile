FROM ruby:2.5.1-slim

# Install the dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
    build-essential libpq-dev imagemagick curl

# Install the GNUPG
RUN apt-get install -y gnupg

# Install NodeJS v8
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs

# Install o Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update && apt-get install -y yarn


# Set the path
ENV INSTALL_PATH /my-jobs

# Create directory
RUN mkdir -p $INSTALL_PATH

# Set path to main directory
WORKDIR $INSTALL_PATH

# Copy Gemfile into conteiner
COPY Gemfile ./

# Set the path for Gems
ENV BUNDLE_PATH /box

# Copy code into conteiner
COPY . .