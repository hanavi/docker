FROM ubuntu

RUN apt-get update && apt-get -y dist-upgrade
RUN apt-get install -y dbus-x11 sudo libcanberra-gtk-module
RUN apt-get install -y firefox pulseaudio
#RUN mkdir /home/james
RUN groupadd -g 1000 james
RUN useradd -u 1000 -g 1000 -d /home/james james



CMD ["firefox"]
