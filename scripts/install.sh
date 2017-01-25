#!/bin/bash
wget https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh 
sh ./install.sh
. ~/.nvm/nvm.sh
nvm install 4.4.5
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 80 -j REDIRECT --to-ports 8080
rm install.sh
