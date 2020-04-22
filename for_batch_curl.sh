#! /bin/bash
for i in `seq 10`; do ret=`curl -o /dev/null -s -w %{time_namelookup}:%{time_connect}:%{time_starttransfer}:%{time_total}:%{speed_download} http://www.baidu.com`; echo "$ret";done
