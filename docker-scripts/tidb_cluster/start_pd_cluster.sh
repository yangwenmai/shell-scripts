#!/bin/sh

PD_PATH=/Users/maiyang/develop/goworkspace/src/github.com/gzptgo/pd

pkill pd-server
($PD_PATH/bin/pd-server --name=pd1 --client-urls=http://127.0.0.1:2379 --peer-urls=http://127.0.0.1:2380 --initial-cluster="pd1=http://127.0.0.1:2380,pd2=http://127.0.0.1:2480,pd3=http://127.0.0.1:2580" --data-dir=/Users/maiyang/data/pd --log-file $PD_PATH/pd.log &)
($PD_PATH/bin/pd-server --name=pd2 --client-urls=http://127.0.0.1:2479 --peer-urls=http://127.0.0.1:2480 --initial-cluster="pd1=http://127.0.0.1:2380,pd2=http://127.0.0.1:2480,pd3=http://127.0.0.1:2580" --data-dir=/Users/maiyang/data/pd1 --log-file $PD_PATH/pd1.log &)
($PD_PATH/bin/pd-server --name=pd3 --client-urls=http://127.0.0.1:2579 --peer-urls=http://127.0.0.1:2580 --initial-cluster="pd1=http://127.0.0.1:2380,pd2=http://127.0.0.1:2480,pd3=http://127.0.0.1:2580" --data-dir=/Users/maiyang/data/pd2 --log-file $PD_PATH/pd2.log &)
