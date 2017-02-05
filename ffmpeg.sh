#!/bin/bash

FRAMERATE=1
RESOLUTION=1024x768
INPUT="-f x11grab -r $FRAMERATE -s $RESOLUTION -i :0.0"
FEED_URL=http://127.0.0.1:8090/feed-rpi.ffm
# AUDIO=-i anullsrc
# AUDIO=-f lavfi -i aevalsrc=0 -c:a libmp3lame
# ffmpeg -f x11grab -s 1024x768 -i :0.0 -c:v mpeg4 -f mp4 -f lavfi -i aevalsrc=0 -c:a libmp3lame $FEED_URL
ffmpeg -probesize 10M $INPUT $AUDIO $FEED_URL
