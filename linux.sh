#!/bin/bash
kernel=$(uname -a | awk '{print $3}')
echo $kernel > /home/pi/rpibot/kernel.txt
sed -i 's|+||' /home/pi/rpibot/kernel.txt
kernel=$(cat /home/pi/rpibot/kernel.txt)
rm /home/pi/rpibot/kernel.txt
python /home/pi/rpibot/tweet.py "Ma version de Linux est la "$kernel
