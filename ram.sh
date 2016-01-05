#!/bin/bash
totalkb=`grep MemTotal /proc/meminfo | awk '{print $2}'`
freekb=`grep MemAvailable /proc/meminfo | awk '{print $2}'`
let "totalmb = $totalkb / 1000"
let "freemb = $freekb / 1000"
let "usedmb = $totalmb - $freemb"
let "usedkb = $totalkb - $freekb"
let "totalkbpc = $totalkb / 100"
let "percent = $usedkb / $totalkbpc"
#let "percent = $percent * 100"
#python /home/pi/rpibot/tweet.py "J'ai "$freemb" Mo de RAM de libre sur "$totalmb"."
python /home/pi/rpibot/tweet.py "J'utilise "$usedmb" Mo de RAM sur "$totalmb" Mo, soit "$percent"%."
