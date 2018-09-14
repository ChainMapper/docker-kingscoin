#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
txindex=1
listen=1
addnode=84.105.76.193:5545
addnode=95.179.194.217:5545
addnode=207.148.106.129:5545
addnode=199.247.31.186:5545
addnode=149.28.141.186:5545
addnode=95.179.145.154:35764
addnode=198.187.28.19:52500
addnode=5.164.143.162:60070
addnode=45.64.139.130:56275
EOF