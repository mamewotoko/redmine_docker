Redmine3 with backlogs as docker container
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
3. start db and wait 

```
docker-compose up -d rm3db
```

wait until followig line is displayed by `docker-compose logs` command

```
rm3db_1       | Version: '10.1.23-MariaDB-1~jessie'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  mariadb.org binary distribution
```

4. start redmine

```
docker-compose up -d rm3redmine
```

5. open redmine url http://localhost:3001
6. login as admin
7. load default setting
   click Administration -> select english and load default setting
8. install backlogs plugin

```
sh install.sh
```

9. define status and workflow of tracker named task_tracker 

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

Logs
----
* redmine

```
volume/redmine/log/production.log
```

Configuration
-------------
* url prefix is /redmine_backlogs/
  * to configure url prefix, edit last line of redmine/config3.diff

TODO
----
* use [wait-for](https://github.com/Eficode/wait-for) to wait db and start redmine
  * volume of redmine3 becomes dirty

References
----------
* [library/redmine](https://hub.docker.com/_/redmine/)
* [backlogs/redmine_backlogs](https://github.com/backlogs/redmine_backlogs)
  * branch redmine3

----
Takashi Masuyama < mamewotoko@gmail.com >  
http://mamewo.ddo.jp/
