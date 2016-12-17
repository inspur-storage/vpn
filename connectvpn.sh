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
	poff america
	poff
        echo "connect to vpn ..."
        pon america
	sleep 10s
	route add -net 0.0.0.0 dev ppp0
	echo "ok"
fi
sleep 10s
echo "vpn is ok"
done
