###Ejercicio 2: 
####1. Mostrar los puentes configurados en el sistema operativo.

Los puentes configurados del sistema operativo los mostramos con:

	brctl show
    
####2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

Para crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi hacemos lo siguiente:

Creamos interfaz virtual:

	sudo brctl addbr interfaceIV

Si quisieramos eliminar dicho puente bastaria con hacer:

	sudo brctl delbr interfaceIV

La asignamos al interfaz de la tarjeta wifi:

    sudo brctl addif interfaceIV wlan0

Si quisieramos anular este último basta con hacer:

	sudo brctl delif interfaceIV wlan0

Por último levantamos para que quede funcionando:

	sudo ifconfig interfaceIV up