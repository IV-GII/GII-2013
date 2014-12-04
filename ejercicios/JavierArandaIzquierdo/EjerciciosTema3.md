#Ejercicios Tema 3
###Ejercicio 1
#####Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback

Primero usamos:

	sudo unshare -m /bin/bash
para crear un namespace con mount (es la opcion -m).

Despues creamos el directorio donde vamos a montar la ISO:

	sudo mkdir /mnt/ISO
    
Para finalizar montamos la imagen ISO:

	sudo mount -o loop -t iso9660 ~/Escritorio/ubuntu-14.04.1-server-i386.iso /mnt/ISO
    
###Ejercicio 2
#####1.Mostrar los puentes configurados en el sistema operativo.

Para mostrar los puentes que hay ya configurados en el S.O utilizamos la siguiente orden:

	ip add show
    

#####2.Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

Para crear un nuevo interface virtual utilizamos:

	sudo brctl addbr puente
    
Donde puente es el nuevo interface. Podemos comprobar que se ha creado correctamente con la orden del ejercicio 1.
Tras esto, la asignamos al interface de la tarjeta wifi, que en mi caso es wlan0:

	sudo brctl addif puente wlan0