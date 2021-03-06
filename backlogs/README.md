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
   click Administration -> load default setting
7. install backlogs plugin

```
sh install.sh
```

8. define status and workflow of tracker named task_tracker 

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

Configuration
-------------
* url prefix is /redmine_backlogs/
  * to configure url prefix, edit last line of redmine/config3.diff

References
----------
* [library/redmine](https://hub.docker.com/_/redmine/)
* [backlogs/redmine_backlogs](https://github.com/backlogs/redmine_backlogs)
  * version 2.6.6

----
Takashi Masuyama < mamewotoko@gmail.com >  
http://mamewo.ddo.jp/
