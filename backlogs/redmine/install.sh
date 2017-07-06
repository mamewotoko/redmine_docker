#! /bin/sh
set -x
cd plugins
git clone -b v1.0.6 https://github.com/backlogs/redmine_backlogs.git
cd redmine_backlogs
patch -p1 < ../../nokogiri.patch
cd ../..
gem install holidays --version 1.0.3
#bundle update
bundle install
export RAILS_ENV=production
bundle exec rake db:migrate
bundle exec rake redmine:backlogs:install <<EOF
1 2 3
y
task_tracker
y
EOF
