FROM ubuntu:bionic

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y deluge deluged deluge-console deluge-web
RUN apt-get install -y nfs-common
RUN update-rc.d rpcbind enable

EXPOSE 8000
CMD ["deluge-web", "-p", "8000"]
