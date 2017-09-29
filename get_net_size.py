#!/usr/local/bin/python3.6
def get_net_size(netmask):
  """
  Function to get CIDR from netmask
  Expects the netmask to be a list like (['255','255','0','0'])
  
  Common usage when parsing a csv file line by line:
  netmask = (row['Mask']).split('.')
  cadd = str((get_net_size(netmask)))
  """
	
  binary_str = ''
  for octet in netmask:
    binary_str += bin(int(octet))[2:].zfill(8)
   return str(len(binary_str.rstrip('0')))
