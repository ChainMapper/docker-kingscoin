FROM chainmapper/walletbase-xenial

ENV WALLET_URL=https://github.com/kingscrypto/KINGSCOIN/releases/download/1.0.0/kingscoin-1.0.0-x86_64-linux-gnu.tar.gz

RUN wget $WALLET_URL -O /tmp/wallet.tar.gz \
	&& cd /usr/local/bin \
	&& tar xzvf /tmp/wallet.tar.gz \
	&& rm /tmp/wallet.tar.gz

RUN mkdir /data
ENV HOME /data

#rpc port & main port
EXPOSE 6666 1777

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
COPY wallet.sh /wallet.sh
RUN chmod 777 /*.sh
CMD /start.sh kingscoin.conf KGS kingscoind