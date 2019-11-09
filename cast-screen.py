import time
import pychromecast

print("Looking for Chromecast devices...")
chromecasts = pychromecast.get_chromecasts()
cast = next(cc for cc in chromecasts if cc.device.friendly_name == "Chromecast-CJ")
cast.wait()
mc = cast.media_controller

url = 'http://192.168.0.10:8090/rpi.webm'
content_type = 'video/webm' 
print("Playing...")
mc.play_media(url, content_type, stream_type="LIVE")
mc.block_until_active()
print(mc.status)
mc.play()
