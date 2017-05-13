#! /bin/sh
bundle exec rake acts_as_taggable_on_engine:install:migrations RAILS_ENV=production
bundle exec rake db:migrate RAILS_ENV=production
bundle exec rake db:migrate_plugins RAILS_ENV=production
