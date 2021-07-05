#!/bin/bash

while (true)
do


  dig santa-dev-session01.x20xfy.ng.0001.apn2.cache.amazonaws.com | grep ^santa |grep 'IN CNAME' 

  dig santa-dev-session01-001.x20xfy.0001.apn2.cache.amazonaws.com  | grep ^santa
   redis-cli -h santa-dev-session01-001.x20xfy.0001.apn2.cache.amazonaws.com info \
      | egrep '(run_id|uptime_in_seconds|avg_ttl|role)' \
      | cut -d: -f2 \
      | column -t \
      | tr '\n' ' ' \
      | sed  s/'\\x0d'/\\t/g

echo ""
  dig santa-dev-session01-002.x20xfy.0001.apn2.cache.amazonaws.com  | grep ^santa

    redis-cli -h santa-dev-session01-002.x20xfy.0001.apn2.cache.amazonaws.com info \
      | egrep '(run_id|uptime_in_seconds|avg_ttl|role)' \
      | cut -d: -f2 \
      | column -t \
      | tr '\n' ' ' \
      | sed  s/'\\x0d'/\\t/g

echo ""

date

sleep 1
done 
