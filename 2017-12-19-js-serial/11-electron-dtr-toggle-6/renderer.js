// This file is required by the index.html file and will
// be executed in the renderer process for that window.
// All of the Node.js APIs are available in this process.

const serialport = require('serialport')
var port = new serialport('/dev/ttyUSB1', {
  baudRate:115200
});

console.log("Abriendo puerto serie...");

// Open errors will be emitted as an error event
port.on('error', function(err) {
  console.log('------>Error: ', err.message);
});

button = document.getElementById('DTR');
button.addEventListener('click', (e) => {
  process.stdout.write("checked:"+e.target.checked+"\n");
  console.log("DTR click");
  port.set({dtr: e.target.checked, rts: false}, function(err){
          if(err) console.log('Set Error: ', err.message);
          else
            console.log('DTR on');
        });
})
