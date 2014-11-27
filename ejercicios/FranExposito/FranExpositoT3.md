##Ejercicios Tema 3. [Francisco Javier Expósito Cruz](http://github.com/franexposito)

##Técnicas de virtualización.
###Ejercicio 1.
En primer lugar creamos el espacio de nombres:

		sudo unshare -u /bin/bash  
		hostname temporal

Despues montamos la imagen, para ello utilizaremos el siguiente comando:

	mount -o loop -t iso9660 ubuntu-14.04.1-server-i386.iso /mnt/test  

Y ya lo tenemos montado:

![t31a](imagenes/t31a.png)
> Muestra del comando mount.  

###Ejercicio 2.
######Apartado 1.
![t32a](imagenes/t3e2_a.png)  
>Muestra de los puentes en mi máquina.  

######Apartado 2.
En primer lugar creamos el puente:

	brctl addbr auxbridge  

![t32b](imagenes/t3e2_b.png)
> Creando el puente auxbridge.  

Posteriormente, añadiremos wlan0 al puente con el siguiente comando:  

	brctl addif auxbridge wlan0  

Finalmente lo activamos:  

	ifconfig auxbridge up  


###Ejercicio 3.

###Ejercicio 4.

###Ejercicio 5.

###Ejercicio 6.
