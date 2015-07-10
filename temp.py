#!/usr/bin/env python
# coding: utf-8
import os
from twython import Twython
CONSUMER_KEY = 'YOURCONSUMER_KEY'
CONSUMER_SECRET = 'YOUCONSUMER_SECRET'
ACCESS_KEY = 'YOURACCESS_KEY'
ACCESS_SECRET = 'YOUACCESS_SECRET'

api = Twython(CONSUMER_KEY,CONSUMER_SECRET,ACCESS_KEY,ACCESS_SECRET)

cmd = '/opt/vc/bin/vcgencmd measure_temp'
line = os.popen(cmd).readline().strip()
temp = line.split('=')[1].split("'")[0]
api.update_status(status='La température du CPU est de '+temp+' °C')
