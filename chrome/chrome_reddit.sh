#!/bin/bash

docker run -it --rm \
  -u 1000:1000 \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /home/james/docker_profiles/reddit:/home/james \
  -v /run/user/1000/pulse/native:/run/user/1000/pulse/native \
  -v /dev/dri:/dev/dri \
  -e PULSE_SERVER=unix:/run/user/1000/pulse/native \
  -e DISPLAY=unix$DISPLAY \
  --name chromium \
  chromium

