FROM chainmapper/walletbase-xenial

ENV WALLET_URL=https://github.com/alamin0x1/ThunderCash/releases/download/v1.02/Bin.zip

RUN wget $WALLET_URL -O /tmp/wallet.zip \
	&& unzip -j /tmp/wallet.zip -d /usr/local/bin \
	&& chmod +x /usr/local/bin/*

RUN mkdir /data
ENV HOME /data

#rpc port & main port
EXPOSE 6666 5545

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod 777 /*.sh
CMD /start.sh kingscoin.conf KGS kingscoind