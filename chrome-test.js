var ChromecastAPI = require('chromecast-api')

var browser = new ChromecastAPI.Browser()

var update = function(device) {
    
}

browser.on('deviceOn', function (device) {
    // var urlMedia = 'http://commondatastorage.googleapis.com/gtv-videos-bucket/big_buck_bunny_1080p.mp4';
    // var urlMedia = 'http://192.168.0.11:8000/out.png';
    // var urlMedia = 'http://192.168.0.11:8888';
    //    var urlMedia = { url : 'https://jpeg.org/images/jpeg-home.jpg'
    //                   , contentType: 'image/jpeg'
    //                   };
    var urlMedia = { url : 'http://192.168.0.11:8000/screen.png'
                   , contentType: 'image/png' 
                   }

    device.play(urlMedia, 0, function () {
        console.log('Playing in your chromecast')

        device.getStatus(function(err, status) { console.log(status) })
        // setTimeout(function () {
        //     //Pause the video
        //     device.pause(function () {
        //         console.log('Paused')
        //     })
        // }, 20000)

        // setTimeout(function () {
        //     //Stop video
        //     device.stop(function () {
        //         console.log('Stopped')
        //     })
        // }, 30000)

        // setTimeout(function () {
        //     //Close the streaming
        //     device.close(function () {
        //         console.log('Closed')
        //     })
        // }, 40000)
    })
})
