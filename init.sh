#!/bin/bash -ex

DISPLAY=":0"
SCREENSHOT=screen.png

# Take a screenshot
function take_screenshot { 
    DISPLAY=$DISPLAY scrot $SCREENSHOT 
}

# Start HTTP Server
function start_http_server {
    python -m SimpleHTTPServer &
}

start_http_server

while true; do
    sleep 0.5
    take_screenshot
done

trap "pkill python" SIGINT INT EXIT
