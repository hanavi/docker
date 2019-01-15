# docker run --rm -d \
#	--network tor_default \
#	-p 9050:9050 \
#	--name mytor \
#	tor

FROM ubuntu

RUN apt-get update \
	&& apt-get install -y tor 

COPY torrc /etc/tor/torrc

CMD ["tor"]
