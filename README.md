1. Start X Server by running `startx`.
2. Start ffserver which will start listening for a feed sent to it.
3. Start ffmpeg so that it sends the feed where ffserver is waiting for it.
4. Get the chromecast to play the stream generated by ffserver.

# Resources

- [FFMPEG Streaming Guide](https://trac.ffmpeg.org/wiki/StreamingGuide#Latency)
- [Webm codec docs](https://www.ffmpeg.org/ffmpeg-codecs.html#libvpx)
