var ChromecastAPI = require('chromecast-api')

var browser = new ChromecastAPI.Browser()

var urlMedia = { url : 'http://192.168.0.10:8090/rpi.webm'
               , contentType: 'video/webm'
               , streamType: 'LIVE'
               }

var checkStatus = function(device) {
    device.getStatus(function(err, status) { console.log(status) })
    setTimeout(function() { checkStatus(device); }, 1000)
}
var update = function(device) {
    device.play(urlMedia, 0, function () {
        console.log('Playing in your chromecast')

        checkStatus(device)
    })
}

browser.on('deviceOn', function (device) {
   update(device)
})
