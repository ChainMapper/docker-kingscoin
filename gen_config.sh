#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
txindex=1
listen=1
checkblocks=2
addnode=159.69.178.130
addnode=95.216.174.44
addnode=159.69.31.239
addnode=95.216.161.227
EOF