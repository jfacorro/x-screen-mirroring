#!/bin/bash

FEED_URL=http://127.0.0.1:8090/feed-pi.ffm
ffmpeg -f x11grab -s 1024x768 -i :0.0 -c:v mpeg4 -f mp4 -f lavfi -i aevalsrc=0 -c:a libmp3lame $FEED_URL
