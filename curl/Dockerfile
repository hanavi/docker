FROM debian:sid-slim

RUN apt-get update 
RUN apt-get install -y curl wget openssl

ENTRYPOINT ["curl"]
CMD ["-h"]
