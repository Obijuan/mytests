Pruebas con el puerto serie

* Biblioteca de Javascript usada: https://www.npmjs.com/package/serialport
* Instalación:

```
npm install
```

* Ejecutar:

```
node main.js
```

Si la icezum alhambra esta conectada aparecerá esto:

```
Abriendo puerto serie...
   Menu
-------
1.- DTR on
2.- DTR off
q.- Quit
```

y con las teclas 1 y 2 podremo activar/desactivar el DTR (En la icezum he cargado un circuito para mostrar en los LEDS el estado del DTR: DTR_test.ice)
