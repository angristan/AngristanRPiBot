#!/bin/bash
if [ -e /home/pi/rpibot/tweetcount.txt ]
then
	tweetcount=`cat /home/pi/rpibot/tweetcount.txt`
else
	echo "1" > /home/pi/rpibot/tweetcount.txt
	tweetcount=`cat /home/pi/rpibot/tweetcount.txt`
fi
if [[ $tweetcount == "1" ]]
then
	bash /home/pi/rpibot/ram.sh
	echo "2" > /home/pi/rpibot/tweetcount.txt
	exit
elif [[ $tweetcount == "2" ]]
then
	bash /home/pi/rpibot/load.sh
	echo "3" > /home/pi/rpibot/tweetcount.txt
	exit
elif [[ $tweetcount == "3" ]]
then
	python /home/pi/rpibot/temp.py
	echo "4" > /home/pi/rpibot/tweetcount.txt
	exit
elif [[ $tweetcount == "4" ]]
then
	python /home/pi/rpibot/uptime.py
	echo "1" > /home/pi/rpibot/tweetcount.txt
	exit
fi
