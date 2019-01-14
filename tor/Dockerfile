FROM ubuntu



RUN apt-get update \
	&& apt-get install -y tor 

COPY torrc /etc/tor/torrc

CMD ["tor"]
