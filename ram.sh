totalkb=`grep MemTotal /proc/meminfo | awk '{print $2}'`
freekb=`grep MemFree /proc/meminfo | awk '{print $2}'`
let "totalmb = $totalkb / 1000"
let "freemb = $freekb / 1000"
python /home/pi/TweetBot/tweet.py "J'ai "$freemb" Mo de RAM de libre sur "$totalmb"."
