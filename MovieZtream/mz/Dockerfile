FROM tomcat:8.0-alpine
MAINTAINER Samir Ben Saoud (bensaoud.samir@gmail.com)

ADD sample.war /usr/local/tomcat/webapps/

RUN mkdir /apps
ADD apps /apps/
ADD startup.sh /


EXPOSE 8080
CMD ["startup.sh", "run"]