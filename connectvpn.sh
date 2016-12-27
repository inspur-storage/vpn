#!/bin/bash
#SERVER=ec2-52-78-114-56.ap-northeast-2.compute.amazonaws.com
#SERVER=jp5bm.xynode.cc
SERVER=krfs1.xynode.cc
#SERVER=jp3lq.xynode.cc
#SERVER=jp4uy.xynode.cc
USER=604734184
#USER=test
PASS=111111
ENCRYPT=--encrypt

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
DATE=`date`        
if [ -z "$VPN" ]
then	
	echo $VPN
	echo "$DATE VPN is down"
	poff america
	poff
        echo "connect to vpn ..."
	pptpsetup --create america --server $SERVER --username $USER --password $PASS  $ENCRYPT --start
	sleep 1s
	route add -net 0.0.0.0 dev ppp0
	echo "ok"
else
	sleep 5s
	echo "$DATE vpn is ok"
fi
done
