#!/usr/local/bin/python3.6
import json
import requests

# Gets next available IP address in network using Infoblox REST API

# Ignoring SSL warnings

from requests.packages.urllib3.exceptions import InsecureRequestWarning

requests.packages.urllib3.disable_warnings(InsecureRequestWarning)


ib_prod_user = 'username'
ib_prod_pass = 'password'
ib_prod_gridmaster = 'FQDN of grid master'
ib_prod_api_base_url = 'https://' + ib_prod_gridmaster + '/wapi/v2.3.1/'


s = requests.Session()
r = s.get(ib_prod_api_base_url + 'ipv4address',
  params={'_max_results': str(ib_api_max_dns_get), 'status': 'USED', 'network_view': 'default', 'network': '10.2.10.32/30'},
  auth=(ib_prod_user, ib_prod_pass),
  headers={'Accept':'application/json', 'Content-Type':'application/json'},
  verify=False)

a = json.loads(r.text)
print(a)
