FROM ubuntu:latest

RUN apt-get update 
RUN apt-get install -y openvpn iptables 

#RUN mkdir -p /dev/net
#RUN mknod /dev/net/tun c 10 200

WORKDIR /openvpn
ENTRYPOINT ["openvpn"]
CMD ["US East.ovpn"]
