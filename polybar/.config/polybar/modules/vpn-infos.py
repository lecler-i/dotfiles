#!/usr/bin/env python3

import requests

r = requests.get('https://ipinfo.io/')
data = r.json()

print("{} - {}".format(data['country'], data['ip']))
