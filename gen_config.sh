#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
txindex=1
listen=1
addnode=80.211.174.239
addnode=80.211.45.25
addnode=80.211.40.41
addnode=80.211.177.233
addnode=185.43.210.213
checkblocks=2
EOF