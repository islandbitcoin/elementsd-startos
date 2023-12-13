#!/bin/sh

RPC_USER=$(yq e '.bitcoind-user' /root/start9/config.yaml)
RPC_PASS=$(yq e '.bitcoind-password' /root/start9/config.yaml)

echo "rpcuser=user1
rpcpassword=password1
daemon=0
listen=0
trim_headers=1
assumevalid=d5c8278b7c1c926eea46776445aaa94906a0e2a753fa007bda1841139cfb6543
txindex=1
validatepegin=1
mainchainrpchost=bitcoind.embassy
mainchainrpcport=8332
mainchainrpcuser=$RPC_USER
mainchainrpcpassword=$RPC_PASS
initialfreecoins=2100000000000000
fallbackfee=0.000001
[elementsregtest]
rpcport=7041
port=7042
anyonecanspendaremine=1
connect=localhost:18887" > /root/.elements/elements.conf

cat /root/.elements/elements.conf

# while true; do sleep 30; done;

exec tini elementsd
