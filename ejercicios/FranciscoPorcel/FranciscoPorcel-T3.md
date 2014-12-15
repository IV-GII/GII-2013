#Tema 3

##Ejercicio 1

#### Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback

Simplemente tenemos que hacer:

![Ejercicio 1](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema3/1.png)

Donde imagen es el fichero a montar.

##Ejercicio 2

#### 1. Mostrar los puentes configurados en el sistema operativo.

Lo hacemos mediante:

![Ejercicio 2](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema3/2_1.png)

Como podemos observar no hay ninguno creado aún.

#### 2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

Para crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi hacemos lo siguiente:

Creamos interfaz virtual:

* sudo brctl addbr puenteEjercicio2

La asignamos al interfaz de la tarjeta wifi:

* sudo brctl addif puenteEjercicio2 wlan0

Se edita el fichero 

* /etc/networks/interfaces 

para configurar la nueva interfaz

Se añade un default gateway

* route add default gw [IP] nuevopuente 

Por último levantamos para que quede funcionando:

* sudo ifconfig puenteEjercicio2 up

##Ejercicio 3

#### 3.1 Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.

En primer lugar instalamos debootstrap:

* sudo apt-get install debootstrap

Creamos un usuario llamado "jaulas".

* sudo debootstrap --arch=i386 saucy /home/jaulas/saucy32/ http://archive.ubuntu.com/ubuntu

Nos devolverá el siguiente mensaje:

I: Base system installed successfully.

#### 3.2 Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.

Instalamos rinse y Fedora mediante:

sudo apt-get install rinse

sudo rinse --arch=amd64 --distribution fedora-core-6 --directory /home/jaulas/fedora/

Que devuelve:

''' Installed: dhclient.x86_64 12:3.0.5-5.fc6 Cleaning up Final tidy... Installation complete. '''

## Ejercicio 4 

#### Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla. 

Entramos en una de las jaulas creadas:

sudo chroot /home/jaulas/saucy32

Montamos "/proc":

mount -t proc proc /proc

Instalamos el paquete en español como se dice en la documentación de la práctica:

apt-get install language-pack-es

## Ejercicio 5

#### Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.

Tendremos que añadir el repositorio de la siguiente forma:

* Se edita la lista de repositorios /etc/apt/sources.list
* Se añaden los repositorios: deb http://nginx.org/packages/ubuntu/ saucy nginx y deb-src http://nginx.org/packages/ubuntu/ saucy nginx
* Se descarga la clave del repositorio: wget http://nginx.org/keys/nginx_signing.key
* Se añade la clave apt-key: add nginx_signing.key
* Se actualiza la lista de repositorios: apt-get update
* Se instala nginx: apt-get install nginx
* Ejecutamos el servicio: service nginx start
* Se accede a "localhost" utilizando el navegador y se comprueba que funciona

## Ejercicio 6

#### Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar. 

Accedemos a la página de ![jailkit](http://olivier.sessink.nl/jailkit/) y lo descargamos. A continuación hacemos lo siguiente:

* tar -xzvf jailkit-2.17.tar.gz
* cd jailkit-2.17
* sudo ./configure && make && sudo make install

Creamos una nueva jaula e iniciamos con jailkit: 
* sudo mkdir /home/jaulas/jailkit sudo jk_init -v -j /home/jaulas/jailkit jk_lsh basicshell netutils editors

Creamos un usuario y lo enjaulamos: 
* sudo adduser enjaulado 
* sudo jk_jailuser -m -j /home/jaulas/jailkit enjaulado

Tras esto, ya tendremos a nuestro usuario enjaulado.
