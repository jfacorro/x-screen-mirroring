#!/bin/bash -ex

trap "pkill ffserver; pkill ffmpeg; pkill nodejs;" SIGINT INT EXIT

DISPLAY=":0"


ffserver &
./ffmpeg.sh &
nodejs cast-screen.js
