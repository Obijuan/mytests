var SerialPort = require('serialport');
var port = new SerialPort('/dev/ttyUSB1', {
  baudRate:115200
});

console.log("Abriendo puerto serie...");


process.stdout.write("   Menu\n");
process.stdout.write("-------\n");
process.stdout.write("1.- DTR on\n");
process.stdout.write("2.- DTR off\n");
process.stdout.write("q.- Quit\n");

// Open errors will be emitted as an error event
port.on('error', function(err) {
  console.log('------>Error: ', err.message);
});

port.on('open', function() {
  console.log("Puerto serie Abierto---");
});

process.stdin.setRawMode(true);

//-- Callbacks para las teclas
process.stdin.on('data', (s) => {
  
  //-- Opcion q: Terminar
  if (s == 'q') {
    console.log("Cerrando puerto serie")
    port.close();
    process.exit(0);
  }

  //-- Opcion 1
  if (s == '1') {
    port.set({dtr: true, rts: false}, function(err){
          if(err) console.log('Set Error: ', err.message);
          else
            console.log('DTR on');
        });
  }

  if (s == '2') {
    port.set({dtr: false, rts: false}, function(err){
          if(err) console.log('Set Error: ', err.message);
          else console.log('DTR off');
        });
  }

});
