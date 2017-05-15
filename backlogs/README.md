
Run
----
1. 
```
docker-compose build
```
2.
```
docker-compose up -d
```
3. open redmine url http://localhost:3000 
4. login as admin
5. load default setting
   click Manage -> load default setting
6. install backlogs plugin
```
docker exec -it backlogs_redmine_1 bash
bundle install
export RAILS_ENV=production
bundle exec rake db:migrate
bundle exec rake redmine:backlogs:install
```
