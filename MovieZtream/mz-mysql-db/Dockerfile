FROM mysql:5

MAINTAINER Samir Ben Saoud (bensaoud.samir@gmail.com)

RUN mkdir /DBScripts

ADD setup.sql /DBScripts
ADD cleanup.sql /DBScripts
ADD repair.sql /DBScripts

ENV MYSQL_ROOT_PASSWORD rootpass


EXPOSE 3306
