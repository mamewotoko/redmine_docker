FROM library/redmine:3.3

RUN apt-get update
RUN apt-get install -y patch
ADD install.sh /etc
ADD config3.diff /etc
ADD config.ru /usr/src/redmine/
RUN patch -p1 < /etc/config3.diff
