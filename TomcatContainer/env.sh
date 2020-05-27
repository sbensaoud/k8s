#!/bin/sh
export JAVA_OPTS="${AGENT_OPTS} -Xmx512m -XX:MaxPermSize=128m -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager";
