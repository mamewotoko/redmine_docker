FROM library/redmine:3.3

RUN apt-get update
RUN apt-get install -y patch

ADD config3.diff /etc
RUN patch -p1 < /etc/config3.diff
