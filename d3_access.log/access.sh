#!/bin/bash -x

echo To get frequently access url count in sorted order
cat access.log | awk '{print $1}' | sort | uniq -c | sort -n | head -4

echo Last four frequently accessed
cat access.log | awk '{print $7}' | sort | uniq -c | sort -nr | head -4

echo To get particular hour

cat access.log | awk '$4 >= "[30/Oct/2019:16:08:27 +000]" && $4 < "[30/Oct/2019:18:38:45 +0000]"' | awk '{print $1}' | sort -n | uniq -c | tail -4

cat access.log | awk -F: '{if ($2 == 12)print $0}' | awk '{print $7}' | sort | uniq -c | sort -nr | head -4

echo Print list of web response code count in the unique order at specific hours

cat access.log | awk -F: '{if($2 == 12)print $0}'| awk '{print $9}' | sort | uniq -c | sort -nr

