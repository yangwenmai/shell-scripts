#!/bin/bash

docker run --restart=always --name=influxdb -d -p 8083:8083 -p 8086:8086 -v /Users/maiyang/develop/docker_workspace/influxdb/data/:/var/lib/influxdb influxdb
