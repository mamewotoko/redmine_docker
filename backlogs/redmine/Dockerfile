FROM library/redmine:2.6.6
RUN apt-get update && apt-get install -y --fix-missing git gcc make g++ mercurial bzr subversion
ADD install.sh /usr/src/redmine/
ADD nokogiri.patch /usr/src/redmine/

ADD config.ru /usr/src/redmine/
RUN cat config/environment.rb
ADD config3.diff /usr/src/redmine/
RUN patch -p1 < config3.diff
