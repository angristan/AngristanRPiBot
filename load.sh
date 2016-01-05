#!/bin/bash
load=`cat /proc/loadavg | awk '{print $1,$2,$3}'`
python /home/pi/rpibot/tweet.py "Mon load average est : "$load
