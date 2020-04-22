#!/bin/sh

TIDB_PATH=/Users/maiyang/develop/goworkspace/src/github.com/crazycs520/tidb

pkill tidb-server

for i in {0..3}
do
	($TIDB_PATH/bin/tidb-server --config ./tidb.toml --path=127.0.0.1:2379 --log-file "$TIDB_PATH/tidb$i.log" --log-slow-query "$TIDB_PATH/tidb-slow$i.log"  --P 500$i --status 1009$i &)
done
