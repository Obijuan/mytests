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

button = document.getElementById('DTRon');
button.addEventListener('click', () => {
	process.stdout.write("Hola desde index.js\n");
  console.log("button pressed");
  port.set({dtr: true, rts: false}, function(err){
          if(err) console.log('Set Error: ', err.message);
          else
            console.log('DTR on');
        });
})


button2 = document.getElementById('DTRoff');
button2.addEventListener('click', () => {
	process.stdout.write("Hola desde index.js\n");
  console.log("button pressed");
  port.set({dtr: false, rts: false}, function(err){
          if(err) console.log('Set Error: ', err.message);
          else
            console.log('DTR off');
        });
})
