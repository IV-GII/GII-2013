Lista de ejercicios Israel Blancas Álvarez
============================

#TEMA 3: Introducción a la infraestructura virtual: concepto y soporte físico#


##Sesión 4-11-2014##

##Ejercicio 1##

#####Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en [ServerFault](http://serverfault.com/questions/198135/how-to-mount-an-iso-file-in-linux) nos explican como hacerlo, usando el dispositivo loopback#####

La forma de hacerlo es ejecutnado el comando

`mount -o loop -t imagen imagen.iso /mnt/imagen`

Donde imagen es el fichero a montar.


***

##Ejercicio 2##

#####1. Mostrar los puentes configurados en el sistema operativo#####
#####2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.#####

Los puentes configurados en mi sistema operativo son los siguientes:

![Mostrando los puentes configurados](http://fotos.subefotos.com/21b87e96de8ac8d7a6e024c2d9589373o.jpg)

Los pasos a seguir para crear una interfaz virtual asignada a la tarjeta wifi son:
+ Abrir una terminal
+ Escribir `sudo brctl addbr nuevopuente`
+ Escribir `sudo brctl addif nuevopuente wlan0`
+ Se edita el fichero `/etc/networks/interfaces` para configurar como deseemos la nueva interfaz y se guarda
+ Se añade un default gateway `route add default gw [IP] nuevopuente`
+ Se activa la interfaz aplicando `ifconfig nuevopuente up`



***
***

##Sesión 10-11-2014##

##Ejercicio 3##

#####1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.#####
#####2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.#####

En primer lugar hay que instalar debootstrap:

``sudo apt-get install debootstrap``

He intentado descargar la versión que hay en el guión de la asignatura. El software devolvía un fallo, por lo que he buscado otra versión del SO. Además, he creado un usuario llamado "jaulas".

``sudo debootstrap --arch=i386 saucy /home/jaulas/saucy32/ http://archive.ubuntu.com/ubuntu``

Tras instalarlo y realizar todas las configuraciones, nos devolverá el siguiente mensaje:

``I: Base system installed successfully.``

En cuanto a la creación de un sistema Fedora dentro de Debian, he instalado rinse e instalado Fedora mediante este sistema:

``sudo apt-get install rinse``

``sudo rinse --arch=amd64 --distribution fedora-core-6 --directory /home/jaulas/fedora/``

Y devolverá la siguiente salida:

'''
Installed: dhclient.x86_64 12:3.0.5-5.fc6
Cleaning up
Final tidy...
Installation complete.
'''
