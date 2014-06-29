#!/bin/bash

shopt -s expand_aliases

alias mvn='mvn -gs $M2_HOME/conf/settings-temp.xml'

MAVEN_OPTS="${MAVEN_OPTS} -XX:MaxPermSize=128m" ; export MAVEN_OPTS

jeesite_home="/project/spring/sample/jeesite"

cd ${jeesite_home}

mvn clean tomcat7:run -Dmaven.tomcat.port=6080

