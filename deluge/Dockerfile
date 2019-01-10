FROM ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y deluge deluged deluge-console deluge-web
RUN apt-get install -y nfs-common
RUN update-rc.d rpcbind enable
#RUN apt-get install -y openvpn
#ADD web.conf /root/.config/deluge/web.conf 

EXPOSE 8080
CMD ["deluge-web", "-p", "8080"]
