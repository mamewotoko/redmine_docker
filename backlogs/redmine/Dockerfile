FROM library/redmine:2.6.6
RUN apt-get update
RUN apt-get install -y git gcc make g++
ADD install.sh /usr/src/redmine/
ADD nokogiri.patch /usr/src/redmine/
