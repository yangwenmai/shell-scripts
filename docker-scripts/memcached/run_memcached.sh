#!/bin/sh

docker run --restart=always -d -p 11211:11211 --name memcached  memcached
