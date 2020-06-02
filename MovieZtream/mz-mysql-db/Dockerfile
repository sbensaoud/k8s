FROM mysql:5

MAINTAINER Samir Ben Saoud (bensaoud.samir@gmail.com)

RUN mkdir /DBScripts

ADD setup.sql /DBScripts
ADD cleanup.sql /DBScripts
ADD repair.sql /DBScripts

ENV MYSQL_ROOT_PASSWORD rootpass


RUN mysql -u root -prootpass < /DBScripts/setup.sql
RUN mysql -u root -prootpass < /DBScripts/cleanup.sql

EXPOSE 3306
