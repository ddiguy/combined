# dns-soa-check
Used to verify if serial numbers on slave DNS servers are not higher than master DNS server

Sample output when script is run:


$ ./checking.sh 
======== SOA Check ========
 
Master DNS server
( 1) dns4.p09.nsone.net.. 1495573222
 
Slave DNS servers:
 
( 1) dns4.p09.nsone.net.. 1495573222 [OK]
( 2) ns3.p43.dynect.net.. 2017052306 [ALERT – SERIAL NUMBER HIGHER THAN MASTER]
( 3) ns1.p43.dynect.net.. 2017052306 [ALERT – SERIAL NUMBER HIGHER THAN MASTER]
( 4) ns4.p43.dynect.net.. 2017052306 [ALERT – SERIAL NUMBER HIGHER THAN MASTER]
( 5) dns1.p09.nsone.net.. 1495573222 [OK]
( 6) dns3.p09.nsone.net.. 1495573222 [OK]
( 7) ns2.p43.dynect.net.. 2017052306 [ALERT – SERIAL NUMBER HIGHER THAN MASTER]
( 8) dns2.p09.nsone.net.. 1495573222 [OK]
