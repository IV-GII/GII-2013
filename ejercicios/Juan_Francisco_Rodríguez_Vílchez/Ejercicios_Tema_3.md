Ejercicios de Juan Francisco Rodríguez Vílchez
================================================

## Ejercicios Tema 3: Técnicas de virtualización ##

### Ejercicio 1 ###

**Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback.**

Primero procedo a crear un espacio de nombres con:

```sh
sudo unshare -u /bin/bash
``` 
Y cambio el nombre usando:

```sh
hostname probando
```
Donde 'probando' será el nuevo nombre del sistema:

![captura1](http://i.imgur.com/IX2hFxN.png)

Posteriormente, continuo montando en él una imagen ISO con:

```sh
mount -o loop disk.iso /mnt/disk
```
Donde disk.iso es cualquiero ISO de un CD que dispongamos y uso la ruta /mnt/disk para montarlo ahí.

![captura2](http://i.imgur.com/dv0s0Rp.png)

Finalmente, podemos ir a dicha ruta y ver si efectivamente se encuentra la ISO montada ("ubuntu"):

![captura3](http://i.imgur.com/go48BXk.png)

***

### Ejercicio 2.1 ###

**Mostrar los puentes configurados en el sistema operativo.**

Con el comando "ip addr show" podemos ver los puentes configurados:

![captura4](http://i.imgur.com/ej5UNeT.png)

***

### Ejercicio 2.2 ###

**Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.**

Antes de nada debemos de instalar el siguiente paquete:

```sh
sudo apt-get install bridge-utils
```
Para crear una interfaz virtual nueva usamos: 

```sh
sudo brctl addbr interfazPrueba
```
Y para asignarla a la interfaz de la tarjeta wifi, hacemos lo siguiente:

```sh
sudo brctl addif interfazPrueba eth0
```
En la siguiente captura, se puede observar como en "eth0" se encuentra asignada la interfaz virtual.

![captura5](http://i.imgur.com/aeQqDJq.png)

***

### Ejercicio 3.1 ###

**Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.**

Antes de nada procedemos a instalar debootstrap para ello:

```sh
sudo apt-get install debootstrap
```
Para crear el sistema (con la distro "lucid") tenemos que utilizar el siguiente comando:

```sh
sudo debootstrap --arch=amd64 lucid /home/jaulas/lucid/ http://archive.ubuntu.com/ubuntu
```
Una vez creado el sistema, nos saldrá el siguiente mensaje:

![captura6](http://i.imgur.com/EKFhvbO.png)

***

## Ejercicio 3.2 ##

**Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.**

Antes de nada procedemos a instalar rinse para ello:

```sh
sudo apt-get install rinse
```
Para crear un sistema Fedora (Fedora core 6) dentro de Debian debemos de usar el siguiente comando:

```sh
sudo rinse --arch=amd64 --distribution fedora-core-6 --directory /home/jaulas/fedora
```
En /home/jaulas/fedora se guardará la distro finalmente creada.Como podemos ver en la siguiente captura, fedora se ha instalado correctamente:

![captura7](http://i.imgur.com/trArZeA.png)

Tutorial seguido: http://manpages.ubuntu.com/manpages/hardy/man8/rinse.8.html

***

### Ejercicio 4 ###

**Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.**

Primero tenemos que entrar en la jaula para ello usamos chroot: 

```sh
sudo chroot /home/jaulas/fedora
```
Sin embargo, la máquina virtual no está completa por lo que tenemos que montar el filesystem virtual /proc para que funcionen ordenes como "top". Para arreglarlo procedemos a montarlo:

```sh
mount -t proc proc /proc
```
Una vez montado ya podemos probar como funciona top:

![captura8](http://i.imgur.com/CvTrBEX.png)

Posteriormente, he instalado "nano" para escribir una aplicación simple en python y poder probarla en la jaula:

```sh
yum install nano
```
He escrito un "Hola mundo" en python:

```sh
#!/usr/bin/python 
print "Hola mundo!"
```
Podemos ver como funciona correctamente al ejecutarlo en la jaula:

![captura9](http://i.imgur.com/6bbwJeP.png)

***

### Ejercicio 5 ###

**Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.**

Para este ejercicio voy a utilizar la jaula instalada en el ejercicio 3.1 que es ubuntu con la distro lucid. Antes de comenzar, he procedido a montar /proc para poder usar apt-get.

Instalo "curl" para realizar las pruebas:

```sh
apt-get install curl
```
Llegados a este punto en la distro "lucid" ni "fedora" no he conseguido instalar nginx, por lo que he procedido a instalar "ubuntu saucy" y realizar todos los pasos anteriores.

Para instalar nginx tenemos que acceder a http://nginx.org/packages/ubuntu/dists/raring/nginx/ y añadirlo al archivo "source lists" para poder instalarlo y descargarlo con "apt-get"

Para añadirlo a /etc/apt/sources.list, he abierto el fichero con nano y he escrito manualmente:

```sh
deb http://nginx.org/packages/ubuntu/ raring nginx
deb-src http://nginx.org/packages/ubuntu/ raring nginx
```
Posteriormente instalo nginx, ya que tenemos todo lo necesario para realizar la instalación satisfactoriamente:

```sh
apt-get install nginx
```
Y ya disponemos de nginx listo para ser usado:

![captura10](http://i.imgur.com/04YygFX.png)

Una vez instalado podemos ver su estado con 'service nginx status' y lo arrancamos con 'service nginx start':

![captura11](http://i.imgur.com/RIB05nY.png)

Cuando ya tenemos a nginx arrancado, podemos ver si funciona en el navegador con el comando 'curl localhost':

![captura12](http://i.imgur.com/FffL9j7.png)

***

### Ejercicio 6 ###

**Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.**


Primero instalamos "jailkit" para ello he seguido el siguiente tutorial:

http://www.javcasta.com/2010/11/28/jaula-en-ubuntu-con-jailkit/

```sh
wget http://olivier.sessink.nl/jailkit/jailkit-2.13.tar.bz2
sudo tar -xjvf jailkit-2.13.tar.bz2 (Descomprimirlo)
```
Lo instalamos:

```sh
./configure
make
su root
make install
```
Para poder usar la utilidad, he seguido los pasos del guión:

```sh
mkdir -p /seguro/jaulas/dorada
chown -R root:root /seguro
```
Y creamos la jaula con una shell, un editor de red y una serie de editores:

```sh
sudo jk_init -v -j /seguro/jaulas/dorada jk_lsh basicshell netutils editors
```

Esta jaula se puede usar directamente con chroot, pero jailkit también permite enjaular usuarios. Tras crear el usuario de la forma habitual en Linux:

* sudo useradd adminIV (Crea un usuario)

* sudo jk_jailuser -m -j /seguro/jaulas/dorada adminIV    (Enjaulamos el usuario)

![captura13](http://i.imgur.com/GeXbDEC.png)

Posteriormente, hay que editar la configuración del usuario (que estará en /seguro/jaulas/dorada/etc/passwd) y cambiar jk_lsh por /bin/bash, el shell habitual.

![captura14](http://i.imgur.com/OduIMRe.png)

Una vez hecho todo esto, te puedes conectar por ssh a tu propia máquina usando el nombre de usuario.
