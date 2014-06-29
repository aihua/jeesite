#!/bin/bash

shopt -s expand_aliases

alias mvn='mvn -gs $M2_HOME/conf/settings-temp.xml'

echo "[INFO] Cleanup"

jeesite_home="/project/spring/sample/jeesite"

cd ${jeesite_home}

mvn clean 
