#/bin/sh
ID=`ps -ef|grep connectvpn|grep bash|awk -F" " '{print $2}'`
if [ -z "$ID" ]
then
        nohup bash ./connectvpn.sh &
        sleep 1
        echo "vpn is start!!!"
else
        echo "VPN is already running !!!"
fi
