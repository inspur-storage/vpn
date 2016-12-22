#!/bin/bash
GD="connectvpn"
VPN=`ifconfig | grep ppp0`
if [ -z "$VPN" ]
then
	ID=`ps -ef|grep $GD|grep bash|awk -F" " '{print $2}'`
	if [ -z "$ID" ]
	then
	echo "vpn guardian is not running"
	else
		echo "vpn guardian process number is "$ID
		echo "killing vpn"
		kill $ID 
		echo "Done !"

	fi
else
	poff america
	poff
	plog
	echo "vpn is down"
	ID=`ps -ef|grep $GD|grep bash|awk -F" " '{print $2}'`
	if [ -z "$ID" ]
	then
	echo "vpn guardian is not running"
	else
		echo "vpn guardian process number is "$ID
		echo "killing vpn"
		kill $ID
		echo "Done !"

	fi
fi
rm -rf nohup.out
