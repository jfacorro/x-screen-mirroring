#!/bin/bash

FRAMERATE=5
# RESOLUTION=640x480
RESOLUTION=1024x768
INPUT="-f x11grab -r $FRAMERATE -s $RESOLUTION -i :0.0"
FEED_URL=http://127.0.0.1:8090/feed-rpi.ffm
PROBESIZE="-probesize 10M -threads 2"
# ffmpeg -f x11grab -s 1024x768 -i :0.0 -c:v mpeg4 -f mp4 -f lavfi -i aevalsrc=0 -c:a libmp3lame $FEED_URL
ffmpeg $PROBESIZE $INPUT $FEED_URL
