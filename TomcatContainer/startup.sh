#!/bin/sh
CWD=${PWD}

source /env.sh

echo $JAVA_OPTS;

cd ${CATALINA_HOME}/bin;

java ${JAVA_OPTS} -cp ${CATALINA_HOME}/bin/bootstrap.jar:${CATALINA_HOME}/bin/tomcat-juli.jar org.apache.catalina.startup.Bootstrap

cd ${CWD}
