FROM mysql:5

MAINTAINER Samir Ben Saoud (bensaoud.samir@gmail.com)

EXPORT MYSQL_ROOT_PASSWORD="rootpass"

RUN mkdir /DBScripts

ADD setup.sql /DBScripts
ADD cleanup.sql /DBScripts
ADD setup.sql /DBScripts

EXPOSE 3306