#!/usr/local/bin/python
 
import requests
 
r = requests.get('https://reg.arin.net/rest/poc/ZW100-ARIN?apikey=API-5E9E-4E66-4DD4-AEB4') 

print r.text

 
