#!/bin/bash

docker run --restart=always -d -p 2379:2379 -p 2380:2380  -v /Users/maiyang/develop/docker_workspace/etcd/data/:/etcd-data  --name etcd quay.io/coreos/etcd:v3.3.8 \
       /usr/local/bin/etcd  --data-dir=/etcd-data  --name node0 \
      --initial-advertise-peer-urls 'http://0.0.0.0:2380'  --listen-peer-urls 'http://0.0.0.0:2380' \
      --advertise-client-urls 'http://0.0.0.0:2379' --listen-client-urls 'http://0.0.0.0:2379' \
      --initial-cluster 'node1=http://0.0.0.0:2380'
