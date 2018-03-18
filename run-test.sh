#!/bin/bash -ex

bundle exec rackup &
sleep 1
ruby test.rb

kill -s INT $!
wait

