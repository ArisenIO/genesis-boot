#!/bin/bash
DATADIR="~/arisen-boot/
if [ ! -d $DATADIR ]; then
mkdir -p $DATADIR;
fi
aos --genesis-json $DATADIR"genesis/genesis.json" --signature-provider RSN_PUB_KEY=KEY:RSN_PRIV_KEY --plugin arisen::producer_plugin --plugin arisen::chain_api_plugin --plugin arisen::http_plugin --plugin arisen::history_api_plugin --plugin arisen::history_plugin --data-dir $DATADIR"/data" --blocks-dir $DATADIR"/blocks" --config-dir $DATADIR"/config" --producer-name arisen --http-server-address 127.0.0.1:8888 --p2p-listen-endpoint 127.0.0.1:6620 --access-control-allow-origin=* --contracts-console --http-validate-host=false --verbose-http-errors --enable-stale-production --p2p-peer-address greatbase.arisen.network:6620 --hard-reply-blockchain >> $DATADIR"/nodeos.log" 2>&1 & echo $! > $DATADIR"/aosd.pid"
