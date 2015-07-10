#!/usr/bin/env python
# coding: utf-8
import os
from twython import Twython
CONSUMER_KEY = 'YOURCONSUMER_KEY'
CONSUMER_SECRET = 'YOUCONSUMER_SECRET'
ACCESS_KEY = 'YOURACCESS_KEY'
ACCESS_SECRET = 'YOUACCESS_SECRET'

api = Twython(CONSUMER_KEY,CONSUMER_SECRET,ACCESS_KEY,ACCESS_SECRET)

def uptime():

     try:
         f = open( "/proc/uptime" )
         contents = f.read().split()
         f.close()
     except:
        return "Cannot open uptime file: /proc/uptime"

     total_seconds = float(contents[0])

     MINUTE  = 60
     HOUR    = MINUTE * 60
     DAY     = HOUR * 24

     days    = int( total_seconds / DAY )
     hours   = int( ( total_seconds % DAY ) / HOUR )
     minutes = int( ( total_seconds % HOUR ) / MINUTE )
     seconds = int( total_seconds % MINUTE )

     string = ""
     if days > 0:
         string += str(days) + " " + (days == 1 and "jour" or "jours" ) + ", "
     if len(string) > 0 or hours > 0:
         string += str(hours) + " " + (hours == 1 and "heure" or "heures" ) + ", "
     if len(string) > 0 or minutes > 0:
         string += str(minutes) + " " + (minutes == 1 and "minute" or "minutes" ) + " et "
     string += str(seconds) + " " + (seconds == 1 and "seconde" or "secondes" )

     return string;

print "The system uptime is:", uptime()
api.update_status(status='Je suis allumé depuis '+uptime()+'.')
