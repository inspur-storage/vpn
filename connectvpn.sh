#!/bin/bash


poff america
poff
poff
echo "-------------------------------------------------------"
plog
echo "-------------------------------------------------------"
while true
do
VPN=`ifconfig | grep ppp0`
#echo $VPN
        
if [ -z "$VPN" ]
then	
	echo $VPN
	echo "VPN is down"
	poff america
	poff
        echo "connect to vpn ..."
	pptpsetup --create america --server krbf2.xynode.cc --username 604734184 --password 111111  --encrypt --start
	sleep 1s
	route add -net 0.0.0.0 dev ppp0
	echo "ok"
fi
sleep 10s
echo "vpn is ok"
done
