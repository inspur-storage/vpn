#!/bin/bash

sudo apt-get install pptp-linux -y
sleep 5s

pptpsetup --create america --server us5.jssj17.com --username 604734184 --password 111111 --encrypt 
echo "setup complete"
