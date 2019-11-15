import time
import pychromecast

print("Looking for Chromecast devices...")
chromecasts = pychromecast.get_chromecasts()
cast = next(cc for cc in chromecasts if cc.device.friendly_name == "Chromecast-CJ")
cast.wait()
mc = cast.media_controller

url = 'http://192.168.0.10/live/index.m3u8'
content_type = 'application/vnd.apple.mpegurl' 
print("Playing...")
mc.play_media(url, content_type, stream_type="LIVE")
mc.block_until_active()
print(mc.status)
# mc.skip()
