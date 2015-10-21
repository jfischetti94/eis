#!/usr/bin/env sh
set -e
cd chopper
bundle install
bundle exec rake

cd ..
cd piedra-papel-tijera-mono
bundle install
bundle exec rake

cd ..
cd battleship
bundle install
bundle exec rake

cd ..
cd calculator
bundle install
bundle exec rake
