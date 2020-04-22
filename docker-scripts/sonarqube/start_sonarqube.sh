#! /bin/bash

export SONARQUBE_HOME=~/.sonarqube
docker run -d --restart=always -p 8081:9000 -v $SONARQUBE_HOME:/opt/sonarqube/data --name sonarqube kennyallen/sonarqube:7.2.1
