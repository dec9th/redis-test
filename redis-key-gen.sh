#!/bin/bash

redis-cli -h santa-dev-session01.x20xfy.ng.0001.apn2.cache.amazonaws.com flushall

for i in $(seq -f "%05g" 0 99999)
do
  echo $i
  redis-cli -h santa-dev-session01.x20xfy.ng.0001.apn2.cache.amazonaws.com set $i "by_santa"


  sleep 1
done
