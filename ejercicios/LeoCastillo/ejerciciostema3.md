#Ejercicio 1#
##Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback##

Creamos un espacio de nombres de tipo UTS con el siguiente comando:

~~~
sudo unshare -u /bin/bash
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio1_1.png)

Y montamos la imagen ISO utilizando el dispositivo loopback:

~~~
mount -o loop ubuntu-14.04.1-server-amd64.iso /mnt/disk
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio1_2.png)


#Ejercicio 2#

1. Mostrar los puentes configurados en el sistema operativo.

2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.


#Ejercicio 3#

##1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.##

##2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.##


#Ejercicio 4#
##Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.##


#Ejercicio 5#
##Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.##



#Ejercicio 6
##Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.##
