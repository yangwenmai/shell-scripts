#!/bin/sh

PD_PATH=/Users/maiyang/develop/goworkspace/src/github.com/gzptgo/pd

pkill pd-server
($PD_PATH/bin/pd-server --name=pd1 --client-urls=http://127.0.0.1:2379 --peer-urls=http://127.0.0.1:2380 --data-dir=/Users/maiyang/data/pd --log-file $PD_PATH/pd.log &)
