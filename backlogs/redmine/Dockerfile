FROM library/redmine:3.3.3
RUN apt-get update && apt-get install -y --fix-missing git gcc make g++ mercurial bzr subversion patch
ADD install.sh /usr/src/redmine/
ADD gemfile.patch /usr/src/redmine/

ADD config.ru /usr/src/redmine/

ADD config3.diff /usr/src/redmine/
RUN patch -p1 < config3.diff

#ADD wait-for /usr/src/redmine/
# CMD ["./wait-for", "rm3db:3306", "-t", "180", "--", "rails", "server", "-b", "0.0.0.0"]
