#!/bin/bash

echo '# santa-dev-session01-001.x20xfy.0001.apn2.cache.amazonaws.com'
redis-cli -h santa-dev-session01-001.x20xfy.0001.apn2.cache.amazonaws.com info  | egrep '(run_id|uptime_in_seconds|avg_ttl|role)'

echo '# santa-dev-session01-002.x20xfy.0001.apn2.cache.amazonaws.com'
redis-cli -h santa-dev-session01-002.x20xfy.0001.apn2.cache.amazonaws.com info  | egrep '(run_id|uptime_in_seconds|avg_ttl|role)'

echo '# santa-dev-session01-003.x20xfy.0001.apn2.cache.amazonaws.com'
redis-cli -h santa-dev-session01-003.x20xfy.0001.apn2.cache.amazonaws.com info  | egrep '(run_id|uptime_in_seconds|avg_ttl|role)'
