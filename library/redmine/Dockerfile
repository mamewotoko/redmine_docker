FROM library/redmine:3.3

RUN apt-get update
RUN apt-get install -y patch
ADD install.sh /etc
ADD config3.diff /etc
ADD config.ru /usr/src/redmine/
RUN git clone git://github.com/farend/redmine_theme_farend_fancy.git public/themes/farend_fancy
RUN patch -p1 < /etc/config3.diff
