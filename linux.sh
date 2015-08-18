#!/bin/bash
kernel=$(uname -a | awk '{print $3}')
echo $kernel > /home/pi/TweetBot/kernel.txt
sed -i 's|+||' /home/pi/TweetBot/kernel.txt
kernel=$(cat /home/pi/TweetBot/kernel.txt)
python /home/pi/TweetBot/tweet.py "Ma version de Linux est la "$kernel
