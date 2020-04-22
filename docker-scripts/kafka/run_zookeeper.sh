#!/bin/bash

docker run --restart=always -d --name zookeeper -p 2181:2181 -v /Users/maiyang/develop/docker_workspace/kafka/zookeeper_conf/:/opt/zookeeper-3.4.6/conf/ \
       -v /Users/maiyang/develop/docker_workspace/kafka/zookeeper_data/:/opt/zookeeper-3.4.6/data/ wurstmeister/zookeeper:3.4.6

