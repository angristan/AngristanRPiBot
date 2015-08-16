#!/bin/bash
totalkb=$(grep MemTotal /proc/meminfo | awk '{print $2}')
freekb=$(grep MemFree /proc/meminfo | awk '{print $2}')
let "totalmb = $totalkb / 1000"
let "freemb = $freekb / 1000"
let "usedmb = $totalmb - $freemb"
let "usedkb = $totalkb - $freekb"
let "totalkbpc = $totalkb / 100"
let "percent = $usedkb / $totalkbpc"
#python /home/pi/TweetBot/tweet.py "J'ai "$freemb" Mo de RAM de libre sur "$totalmb"."
python /home/pi/TweetBot/tweet.py "J'utilise "$usedmb" Mo de RAM sur "$totalmb" Mo, soit "$percent"%."
