#!/bin/bash
cd /root
git clone https://github.com/rea-cruitment/simple-sinatra-app.git
cd simple-sinatra-app/
gem install "rubygems-update:<3.0.0" --no-document
gem install bundler -v '1.17.3'
yum install nginx git -y
service nginx start
chkconfig nginx on
bundle install; bundle exec rackup > /dev/null 2>&1 &

