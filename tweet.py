#!/usr/bin/env python
import sys
from twython import Twython
CONSUMER_KEY = 'YOURCONSUMER_KEY'
CONSUMER_SECRET = 'YOUCONSUMER_SECRET'
ACCESS_KEY = 'YOURACCESS_KEY'
ACCESS_SECRET = 'YOUACCESS_SECRET'

api = Twython(CONSUMER_KEY,CONSUMER_SECRET,ACCESS_KEY,ACCESS_SECRET)

#api.update_status(status=sys.argv[1:])
api.update_status(status=' '.join(map(str, sys.argv[1:])))
