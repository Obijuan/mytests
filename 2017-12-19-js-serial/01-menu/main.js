//-- Ejemplo de como hacer un menu de opciones para pruebas

process.stdout.write("   Menu\n");
process.stdout.write("-------\n");
process.stdout.write("1.- Test\n");
process.stdout.write("q.- Quit\n");

//-- Poner la entrada en modo "RAW", de manera que no hay que apretar ENTER
//-- cada vez que se pulsa una opción
process.stdin.setRawMode(true);


//-- Callbacks para las teclas
process.stdin.on('data', (s) => {

  //-- Debug: mostrar la tecla recibida
  //console.log("Tecla:"+s);

  //-- Opcion q: Terminar
  if (s == 'q') {
    process.exit(0);
  }

  //-- Opcion 1
  if (s == '1')
    console.log("OPCION 1!!!!");
});
