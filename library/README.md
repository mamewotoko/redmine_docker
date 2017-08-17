Redmine as docker container
===========================

Prepare
-------
1. modify docker-compose, especially ports
2. create directories for volumes

```
sh init.sh
```

2. build image

```
docker-compose build
```

Run
---
1. run mariadb docker container

```
docker-compose up -d db
```

2. wait...
3. run redmine docker container

```
docker-compose up -d redmine
```

TODO
----
* use [wait-for](https://github.com/Eficode/wait-for) to wait starting mariadb container

Summary
------
* redmine2.6.6
  * backlogs (v1.0.6)
* redmine3.3.3
  * normal (tagging, sidebar_hide)
  * backlogs (redmine)

Installed plugins, preferences
------------------------------
* [redmine_tagging](https://github.com/Restream/redmine_tagging.git)
* [sidebar_hide](https://github.com/bdemirkir/sidebar_hide.git)
* header color: `redmine/color.patch`
* url prefix is /redmine
* configured mariadb to use utf-8 

----
Takashi Masuyama < mamewotoko@gmail.com >  
http://mamewo.ddo.jp/


