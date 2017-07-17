#/usr/local/bin/python3.6
 
import requests
 
r = requests.get('https://whois.arin.net/rest/net/NET-54-200-0-0-1/pft?s=54.203.244.87') 

print r.text

 
