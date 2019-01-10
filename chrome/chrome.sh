#!/bin/bash

docker run -it --rm \
  -u 1000:1000 \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /home/james/test:/home/james \
  -v /run/user/1000/pulse/native:/run/user/1000/pulse/native \
  -v /dev/dri:/dev/dri \
  -e PULSE_SERVER=unix:/run/user/1000/pulse/native \
  -e DISPLAY=unix$DISPLAY \
  --name chromium \
  chromium



  # -e PULSE_COOKIE_DATA=`pax11publish -d | grep --color=never -Po '(?<=^Cookie: ).*'` \
  # --device /dev/snd \
  # --group-add audio \
  # -v /etc/passwd:/etc/passwd:ro \
  # -v /etc/group:/etc/group:ro \
  # -v /run/dbus/:/run/dbus/ \

# docker run -it --rm \
#   -u 1000:1000 \
#   -v /tmp/.X11-unix:/tmp/.X11-unix \
#   -v /dev/snd:/dev/snd \
#   -v /dev/shm:/dev/shm \
#   -v /home/james/test:/home/james \
#   -v /etc/machine-id:/etc/machine-id \
#   -v /run/user/1000/pulse:/run/user/1000/pulse \
#   -v /var/lib/dbus:/var/lib/dbus \
#   -v ~/.pulse:/home/james/.pulse \
#   -e DISPLAY=unix$DISPLAY \
#   --privileged \
#   --name facebook \
#   firefox bash
