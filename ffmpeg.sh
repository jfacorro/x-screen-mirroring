#!/bin/bash

FRAMERATE=5
RESOLUTION=1024x768
INPUT="-f x11grab -r $FRAMERATE -s $RESOLUTION -i :0.0"
FEED_URL=http://127.0.0.1:8090/feed-rpi.ffm
PROBESIZE="-probesize 10M -threads 2"
ffmpeg $PROBESIZE $INPUT $FEED_URL
