var ChromecastAPI = require('chromecast-api')

var browser = new ChromecastAPI.Browser()

var urlMedia = { url : 'http://192.168.0.11:8000/screen.png'
               , contentType: 'image/png'
               }

var update = function(device) {
    device.play(urlMedia, 0, function () {
        console.log('Playing in your chromecast')

        device.getStatus(function(err, status) { console.log(status) })
        setTimeout(function() { update(device); }, 1000)
    })
}

browser.on('deviceOn', function (device) {
   update(device)
})
