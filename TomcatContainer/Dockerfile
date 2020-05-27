FROM alpine:latest

MAINTAINER Samir Ben Saoud (bensaoud.samir@gmail.com)

RUN apk update && apk add unzip openjdk8 iproute2 curl jq tar gzip
RUN mkdir -p /run/lock && mkdir -p /tomcat


WORKDIR /tomcat

# INSTALL TOMCAT
RUN curl http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.5.51/bin/apache-tomcat-8.5.51.tar.gz -O && \
    tar xvf apache-tomcat-8*tar.gz --strip-components=1 && \
    rm apache-tomcat-*.tar.gz
#    ln -s /apache-tomcat-8.5.51 /tomcat
ENV CATALINA_HOME /tomcat

RUN rm -Rf /tomcat/conf/server.xml && rm -Rf /tomcat/conf/tomcat-users.xml
ADD server.xml /tomcat/conf/
ADD tomcat-users.xml /tomcat/conf/

WORKDIR /

RUN mkdir /apps
ADD startup.sh /
ADD env.sh /

RUN chmod +x /startup.sh && chmod +x /env.sh 
WORKDIR /

CMD ["/bin/sh","/startup.sh"]

EXPOSE 80	
EXPOSE 8080
EXPOSE 8009

