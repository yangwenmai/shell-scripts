#! /bin/bash

export JENKINS_HOME=~/.jenkins
docker run -d --restart=always -p 8080:8080 -p 50000:50000 -v $JENKINS_HOME:/var/jenkins_home --name jenkins jenkins:2.60.3
