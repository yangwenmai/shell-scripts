docker network create etcd --driver bridge --subnet 172.16.1.0/16

docker run -d --name etcd0 --network etcd --ip 172.16.1.10 quay.io/coreos/etcd etcd \
    -name etcd0 \
    -advertise-client-urls http://172.16.1.10:2379,http://172.19.1.10:4001 \
    -listen-client-urls http://0.0.0.0:2379,http://0.0.0.0:4001 \
    -initial-advertise-peer-urls http://172.16.1.10:2380 \
    -listen-peer-urls http://0.0.0.0:2380 \
    -initial-cluster-token etcd-cluster-1 \
    -initial-cluster etcd0=http://172.16.1.10:2380,etcd1=http://172.19.1.11:2380,etcd2=http://172.19.1.12:2380 \
    -initial-cluster-state new

docker run -d --name etcd1 --network etcd --ip 172.16.1.11 quay.io/coreos/etcd etcd \
    -name etcd1 \
    -advertise-client-urls http://172.16.1.11:2379,http://172.19.1.11:4001 \
    -listen-client-urls http://0.0.0.0:2379,http://0.0.0.0:4001 \
    -initial-advertise-peer-urls http://172.16.1.11:2380 \
    -listen-peer-urls http://0.0.0.0:2380 \
    -initial-cluster-token etcd-cluster-1 \
    -initial-cluster etcd0=http://172.16.1.10:2380,etcd1=http://172.19.1.11:2380,etcd2=http://172.19.1.12:2380 \
    -initial-cluster-state new

docker run -d --name etcd2 --network etcd --ip 172.16.1.12 quay.io/coreos/etcd etcd \
    -name etcd2 \
    -advertise-client-urls http://172.16.1.12:2379,http://172.19.1.12:4001 \
    -listen-client-urls http://0.0.0.0:2379,http://0.0.0.0:4001 \
    -initial-advertise-peer-urls http://172.16.1.12:2380 \
    -listen-peer-urls http://0.0.0.0:2380 \
    -initial-cluster-token etcd-cluster-1 \
    -initial-cluster etcd0=http://172.16.1.10:2380,etcd1=http://172.19.1.11:2380,etcd2=http://172.19.1.12:2380 \
    -initial-cluster-state new


docker run -it --name client --network etcd quay.io/coreos/etcd sh


