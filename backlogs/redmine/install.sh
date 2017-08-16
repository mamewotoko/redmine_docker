#! /bin/sh
#BRANCH=feature/ipad_drag
BRANCH=feature/redmine3
GITHUB_URL=https://github.com/mamewotoko/redmine_backlogs.git
#BRANCH=v1.0.6
#GITHUB_URL=https://github.com/backlogs/redmine_backlogs.git

set -x
cd plugins
git clone -b $BRANCH $GITHUB_URL
cd redmine_backlogs
patch -p1 < ../../gemfile.patch
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
