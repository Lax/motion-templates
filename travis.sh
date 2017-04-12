#!/bin/bash

NAME=TestApp

bundle exec motion create --template=circle "$NAME" && \
pushd "$NAME"

export BUNDLE_GEMFILE=$(pwd)/Gemfile

echo "------ $NAME ------" && \
bundle install && bundle show && \
rake pod:update && rake spec
