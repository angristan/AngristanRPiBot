#!/bin/bash
if [ -e /home/pi/TweetBot/tweetcount.txt ]
then
	tweetcount=`cat /home/pi/TweetBot/tweetcount.txt`
else
	echo "1" > /home/pi/TweetBot/tweetcount.txt
	tweetcount=`cat /home/pi/TweetBot/tweetcount.txt
fi
if [[ $tweetcount == "1" ]]
then
	bash /home/pi/TweetBot/ram.sh
	echo "2" > /home/pi/TweetBot/tweetcount.txt
	exit
elif [[ $tweetcount == "2" ]]
then
	bash /home/pi/TweetBot/load.sh
	echo "3" > /home/pi/TweetBot/tweetcount.txt
	exit
elif [[ $tweetcount == "3" ]]
then
	python /home/pi/TweetBot/temp.py
	echo "4" > /home/pi/TweetBot/tweetcount.txt
	exit
elif [[ $tweetcount == "4" ]]
then
	python /home/pi/TweetBot/uptime.py
	echo "1" > /home/pi/TweetBot/tweetcount.txt
	exit
fi
