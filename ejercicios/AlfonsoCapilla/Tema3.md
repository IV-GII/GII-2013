#Tema 3

##Ejercicio 1
###Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback.

Primero creamos el espacio de nombres.

unshare -u /bin/bash

Cambio el nombre del host a "miHost"

`hostname "miHost"`

y montamos el disco

`mount -o loop ubuntu-12.04.4-server-i386.iso /mnt`

##Ejercicio 2
###Mostrar los puentes configurados en el sistema operativo.

Antes de comenzar instalamos bridge-utils.

Y luego hacemos la consulta con `brctl show`
![Puentes de mi equipo](http://i.imgur.com/fVmLEgJ.png)

###Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

La creamos con 
`brctl addbr interfazPrueba`

En este caso no tenemos interfaz wifi, pero si la hubiera la asignaríamos con:
`brctl addif interfazPrueba NombreDeLaInterfazQueQueremosAñadir`
