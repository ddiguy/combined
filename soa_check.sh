#!/bin/bash

# Instructions:
# 1) Add master DNS server to line #12 and #18 in place of "MASTER_DNS"
# 2) Add slave DNS servers in the DNS_SLAVE in place of test servers
# 3) Add zone you're interested in checking to line #12 and #34 in place of "ZONE2CHECK"


echo "======== SOA Check ========"
echo " "

MASTER_SOA=`dig @MASTER_DNS ZONE2CHECK soa +short | awk '{print$3}'`

# Making the slave DNS servers an array
DNS_SLAVE=( "ns1.testserver.com" "ns2.testserver.com" "ns3.testserver.com" \
	"ns4.testserver.com" "ns5.testserver.com" "ns6.testserver.com" )
	
master_indented=$(printf '%-20s' "MASTER_DNS")
master_indented=${master_indented// /.}

echo "Master DNS server"
printf "(%2d) %s $MASTER_SOA\n" "1" "$master_indented"

echo " "
echo "Slave DNS servers:"
echo " "

C=1
# Checking SOA for all slave servers
for i in "${DNS_SLAVE[@]}"
do
	server_indented=$(printf '%-20s' "$i")
	server_indented=${server_indented// /.}
	SLAVE_SOA=`dig @$i ZONE2CHECK soa +short | awk '{print$3}'`
	if [ "$MASTER_SOA" -lt "$SLAVE_SOA"]
		then
		printf "(%2d) %s $SLAVE_SOA [ALERT – SERIAL NUMBER HIGHER THAN MASTER]\n" "$C" "$server_indented"
	else
		printf "(%2d) %s $SLAVE_SOA [OK]\n" "$C" "$server_indented"
	fi
	((C=C+1))
done
