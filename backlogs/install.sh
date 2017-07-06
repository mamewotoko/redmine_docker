#! /bin/sh
set -x
cd plugins
git clone -b v1.0.6 https://github.com/backlogs/redmine_backlogs.git
cd ..
gem install holidays --version 1.0.3
#bundle update
bundle install
export RAILS_ENV=production
bundle exec rake db:migrate
bundle exec rake redmine:backlogs:install
