result=$(redis-cli -h santa-dev-session01-001.x20xfy.0001.apn2.cache.amazonaws.com info  | egrep '(run_id|uptime_in_seconds|avg_ttl|role)')



IFS=''
while read line
do
   echo -n $line
done < $result
