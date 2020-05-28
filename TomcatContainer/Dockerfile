FROM alpine:latest

MAINTAINER Samir Ben Saoud (bensaoud.samir@gmail.com)

RUN apk update && apk add unzip openjdk8 iproute2 curl jq
RUN mkdir -p /run/lock




# INSTALL TOMCAT
RUN curl http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.zip --output  apache-tomcat-8.5.54.zip && \
    unzip apache-tomcat-8.5.54.zip  && \
    mv  apache-tomcat-8.5.54 tomcat && \
    rm apache-tomcat-8.5.54.zip

WORKDIR /tomcat

ENV CATALINA_HOME /tomcat

RUN rm -Rf /tomcat/conf/tomcat-users.xml
ADD tomcat-users.xml /tomcat/conf/

WORKDIR /


#ADD startup.sh /
#ADD env.sh /

#RUN chmod +x /startup.sh && chmod +x /env.sh 
WORKDIR /tomcat/bin

CMD ["/bin/sh","/startup.sh"]

EXPOSE 80

