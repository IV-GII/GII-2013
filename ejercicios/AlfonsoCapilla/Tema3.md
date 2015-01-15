Alfonso Capilla Calvet

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

##Ejercicio 3
###Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.

Lo primero que tenemos que hacer es instalar debootstrap
`sudo apt-get install debootstrap`

Creamos el directorio /home/jaulas/saucy/ y a continuación ejecutamos:
`sudo debootstrap --arch=amd64 saucy /home/jaulas/saucy/ http://archive.ubuntu.com/ubuntu`

![Instalado](http://i.imgur.com/yPXVkwL.png)

###Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.

Primero instalamos Rinse y creamos el directorio /home/jaulas/fedora, donde crearemos el sistema Fedora.
`sudo apt-get install rinse`
`sudo rinse --arch=amd64 --distribution fedora-core-6 --directory /home/jaulas/fedora`

![Instalado](http://i.imgur.com/VQY00cZ.png)

##Ejercicio 4
###Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.

Entramos en la jaula usando chroot
`sudo chroot /home/jaulas/fedora`

Nos da error "top" para arreglarlo montamos el filesystem virtual /proc
También instalamos el lenguaje español para evitar problemas
`apt-get install language-pack-es`

![Top](http://i.imgur.com/qLozP2n.png)

Podemos instalar alguna aplicación como el editor nano 

![Nano](http://i.imgur.com/iSIlFZ4.png)

y hacer un pequeño script en python que ejecutamos sin problema.

![Python](http://i.imgur.com/DNPn58J.png)

##Ejercicio 5
###Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.
Primero realizamos la instalación de curl
`apt-get install curl`

Para instalar nginx usamos 
`apt-get install nginx`

![nginx](http://i.imgur.com/ZGevQW6.png)

Comprobamos que curl funciona sin ningún problema

![curl](http://i.imgur.com/LHycORA.png)

##Ejercicio 6
###Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.
Instalamos jailkit, primero descargamos el paquete, lo descomprimimos, configuramos el make y lo lanzamos.
`wget http://olivier.sessink.nl/jailkit/jailkit-2.16.tar.gz` 
`tar -xzvf jailkit-2.16.tar.gz`
`./configure && make && sudo make install`

Siguiendo los pasos de los apuntes:
`mkdir -p /seguro/jaulas/dorada`
`chown -R root:root /seguro`
`jk_init -v -j /seguro/jaulas/dorada jk_lsh basicshell netutils editors`

A continuación creamos un nuevo usuario
`sudo useradd usuarioIV`

y lo enjaulamos con:
`jk_jailuser -m -j /seguro/dorada usuarioIV`

Por último modificamos la configuración del usuario de /seguro/jaulas/dorada/etc/passwd donde cambiamosr jk_lsh por /bin/bash.

![passwd](http://i.imgur.com/TKEet8P.png)
