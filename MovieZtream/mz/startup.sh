#!/bin/sh
CWD=${PWD}


if [ -n "${ui}" ]; then
        cp /apps/movieztream_ui.war /tomcat/webapps;
fi

if [ -n "${sv}" ]; then
 	cp /apps/movieztream_service.war /tomcat/webapps;
fi

if [ -n "${rt}" ]; then
        cp /apps/movieztream_rating.war /tomcat/webapps;
fi

cd ${CWD}
