#!/bin/bash
docker images | grep $1 | grep "5 days ago"| awk '{ print $3 }'| xargs docker rmi -f
