# LCD y FPGA. Notas

* El LCD 12x2 tiene 2 registros: de instrucciones (o comandos (IR)) y para datos. Para seleccionar uno u otro se usa el pin RS del LCD:
  * RS = 0: Registro de Intrucción
  * RS = 1: Reistro de datos

* De momento solo escribiremos datos, así que el pin R/W lo pondremos a GND

* Tiene dos modos de comunicación: a 4 y 8 bits. Para empezar usaremos el de 8 bits (es el que viene por defecto al arrancar el LCD)

* El ciclo de escritura es:... E normalmente está a 0. Se pone a 1 (E=1), se deposita el dato en el bus (DB7-DB0) se pone E=0. En ese momento se hace la escritura en el registro seleccionado (Datos o instrucción)

* Página 32 del datasheet de hitachi: describen cómo es el protocolo de comunicación entre un micro y el LCD usando transferencias de 8 bits

* En la tabla 11 de la página 40 hay un ejemplo de ponerlo en marcha, con
los comandos que hay que enviar

  * El primer comando a enviar después del reset del display es el SET.
    En él se establece el tipo de interfaz (4 ó 8 bits) y el número de líneas del LCD a usar: 1 ó 2

    CMD:     DB7  DB6  DB5  DB4  DB3  DB2  DB1  DB0
              0    0    1    1    0    0    x    x   (x a 0 por ejemplo)

              Comando: 0xC0

  * Siguiente comando: 0x0F  (Display ON/OFF) para encender display

  * Si escribimos un caracter ASCII en el registro de datos (con RS=1) se verá en la primera posición (sobreescribiéndose, porque no se ha configurado el autoincremento)


# Comandos hola mundo para sacar el primer carácter:

* Encender LCD. Esperar a que se estabilice
* CMD: 0xC0 (SET) RS=0
* CMD: 0x0F  (Display on) RS=0
* CMD: 0x41 (RS=1). Carácter A

Me falta por saber la temporización de E, y establecer un tiempo máximo entre comandos

El diagrama de escritura está en la página 58 y los valores de los parámetros en la 52.

El pulso de Enable tiene que estar a nivel alto al menos 230ns.

Para escribir un comando, en modo "seguro":

* Enviar datos al bus
* Poner estado de RS
* (Al menos 40ns) para que se estabilice RS
* Poner E=1
* Al menos 230ns (Típico 250)
* Poner E=0
* (Hasta que pasen otros 250 no se puede volver a poner a 1)
* El periodo mínimo de E es de 500ns. El comando se ejecuta en su flanco de bajada

# Comandos de 9 bits a enviar para sacar un carácter

El valor de RS lo pondremos como el bit más significativo, y a continuación los 8 bits del comando


* 0x0C0  (SET)
* 0x00F  ( Display on)
* 0x141  (Character A)
