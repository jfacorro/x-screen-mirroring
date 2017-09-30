#!/bin/bash -ex

trap "pkill ffserver; pkill ffmpeg; pkill nodejs;" SIGINT INT EXIT

DISPLAY=":0"

mkdir -p log

# ./start-xvfb.sh &
# ./startx.sh &
ffserver &> ./log/ffserver.log &
./ffmpeg.sh &> ./log/ffmpeg.log &
nodejs cast-screen.js &> ./log/node.log
