#!/bin/bash

FRAMERATE=24
# RESOLUTION=1024x768
RESOLUTION=1024x50
INPUT="-f x11grab -r $FRAMERATE -s $RESOLUTION -i :0.0 -vcodec libx264"
# FEED_URL="http://127.0.0.1:8090/feed-rpi.ffm"
OUTPUT="-f flv -an"
FEED_URL="rtmp:/127.0.0.1:1935/live"
# OUTPUT="-f mpegts"
# FEED_URL="udp://239.0.0.1:1111"
OPTIONS="-probesize 10M -threads 4"
ffmpeg $OPTIONS $INPUT $OUTPUT $FEED_URL
