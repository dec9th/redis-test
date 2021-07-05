#!/bin/bash

while(true)
do

  for i in $(seq -f "%03g" 1 2)
  do

    # redis result
    redis_result=$(redis-cli -h santa-dev-session01-$i.x20xfy.0001.apn2.cache.amazonaws.com info \
      | egrep '(run_id|uptime_in_seconds|avg_ttl|role)' \
      | cut -d: -f2 \
      | column -t \
      | tr '\n' ' ' \
      | sed  s/'\\x0d'/\\t/g)

    echo "$(date) - $redis_result"

    redis_result='null'

  done

  # dig result
  dig santa-dev-session01.x20xfy.ng.0001.apn2.cache.amazonaws.com | grep ^santa |grep 'IN CNAME'

  # test
  echo -e "---" 

  # waiting 1 second
  sleep 1

done
