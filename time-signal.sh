#!/bin/bash
# save as time-signal.sh
# gives a time signal every hour when connected to cron
time=$(date +%I)
minute=$(date +%M)
count=0
while test $count -lt $time; do
  echo -e "\a"
  sleep 1 # sleep for one second
  count=$[$count+1]
done

# sleep for 3 seconds
sleep 3

# gives one chime between 15ms and 30ms past the hour
# gives two chimes between 30ms and 45ms past the hour
# gives three chimes between 45ms and 60ms past the hour

if [[ $minute -lt 30 && $minute -ge 15 ]]; then
 echo -e "\a"
elif [[ $minute -lt 45 && $minute -ge 30 ]]; then
 echo -e "\a"
 echo -e "\a"
elif [[ $minute -lt 60 && $minute -ge 45 ]]; then
 echo -e "\a"
 echo -e "\a"
 echo -e "\a"
fi

