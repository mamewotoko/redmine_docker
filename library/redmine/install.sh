#! /bin/sh

cd plugins
if [ ! -d sidebar_hide ]; then
    git clone -b 0.0.8 https://github.com/bdemirkir/sidebar_hide.git
fi

if [ ! -d redmine_tagging ]; then
    git clone -b 0.1.5 https://github.com/Restream/redmine_tagging.git

    bundle install
    bundle exec rake acts_as_taggable_on_engine:install:migrations RAILS_ENV=production
    bundle exec rake db:migrate RAILS_ENV=production
    bundle exec rake db:migrate_plugins RAILS_ENV=production
fi

if [ ! -d clipboard_image_paste ]; then
    git clone https://github.com/peclik/clipboard_image_paste.git clipboard_image_paste
fi

if [ ! -d redmine_glossary ]; then
    git clone -b feature/redmine-3 https://github.com/torutk/redmine_glossary.git
    bundle exec rake redmine:plugins:migrate RAILS_ENV=production
fi
