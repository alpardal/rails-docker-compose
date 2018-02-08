FROM ruby:2.5.0

RUN apt-get update
RUN apt-get install -y build-essential inotify-tools libpq-dev nodejs postgresql-client

ENV APP_HOME /app
WORKDIR $APP_HOME

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
    BUNDLE_JOBS=2 \
    BUNDLE_PATH=/bundle
    BUNDLE_BIN=$BUNDLE_PATH/bin

ENV PATH=$BUNDLE_BIN:$PATH

EXPOSE 3000
