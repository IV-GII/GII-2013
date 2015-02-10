
##1. Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback


Lo que haríamos sería:

![Img](http://i.imgur.com/wp5omkG.png)


Creamos un espacio de nombres y posteriormente montamos la imagen.

## 2	Mostrar los puentes configurados en el sistema operativo.

	Se hace con el comando:

brctl show

Previamente instalando el paquete correspondiente con:

sudo apt-get install bridge-utils

Mi pc no dispone de ningún puente.




##	Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

![img](http://i.imgur.com/duE3gdT.png)

Lo primero que hacemos es crear el puente, le asignamos una tarjeta de red y luego mostramos las interfaces.

## 3. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.

Lo instalamos:  sudo apt-get install debootstrap

Instalamos qual:

sudo debootstrap --arch=amd64 saucy /home/jaulas/quantal/ http://archive.ubuntu.com/ubuntu

![Img](http://i.imgur.com/JhqUEVA.png)




##Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.

Instalar Rinse.

sudo apt-get install rinse

Ahora para instalar centros:

sudo rinse --arch i386-- distribution centro-6 --directory /home/jaulas/cen


## 5. Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.

Usamos:

sudo apt-get update
sudo apt-get install nginx

Finalmente lo comprobamos con curl que está funcionando:

![img](http://i.imgur.com/4yqdGNl.png)


## 6 Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.



![img](http://i.imgur.com/uVLmxuM.png)

Aquí tenemos instalado y configurado jailkit.

![img](http://i.imgur.com/LRP73cp.png)

Aquí vemos los comandos utilizados para crear el sistema de ficheros y creamos la jaula.

Por último añadimos al usuario con el siguiente comando:

`sudo jk_jailuser -m -j /seguro/jaulas/dorada ariacus` 






