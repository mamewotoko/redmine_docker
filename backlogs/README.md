Redmine with backlogs as docker container
=========================================

Install
-------
1.

```
sh init.sh
```
2. 

```
docker-compose build
```
3.

```
docker-compose up -d
```
4. open redmine url http://localhost:3000 
5. login as admin
6. load default setting
   click Manage -> load default setting
7. install backlogs plugin

```
sh install.sh
```

Run
---

```
docker-compose up -d
```

Stop
----

```
docker-compose down
```

Preferences
----------
* url prefix is /redmine


References
----------
* [library/redmine](https://hub.docker.com/_/redmine/)
* [backlogs/redmine_backlogs](https://github.com/backlogs/redmine_backlogs)

----
Takashi Masuyama < mamewotoko@gmail.com >  
http://mamewo.ddo.jp/
