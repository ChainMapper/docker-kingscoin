# docker-kingscoin
Wallet and daemon for Kingscoin [KGS] cryptocurrency on docker

# Quickstart
Type `docker run -it -e "USER=me" -e "PASSWORD=secret" -e "RPCALLOW=127.0.0.1" chainmapper/kingscoin` and see the wallet starting.

Alternatively type `docker run -it -v "<path_to_config>:/config/kgs.conf" chainmapper/kingscoin` to use your own config.

```
Docker KGS wallet

By: ChainMapper
Website: https://chainmapper.com

Starting KGS daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/kgs.conf` and `/config/wallet.data`

# License
MIT, see LICENSE file