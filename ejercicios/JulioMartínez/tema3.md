Ejercicios de Julio Martínez Martínez-Checa
============================

# Tema 3

## Ejercicio 1 ##
**Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback**

Creación de espacio de nombres y montaje de imagen ISO usando el dispositivo loopback:

![captura26](http://i.imgur.com/U7iPPHx.png)

## Ejercicio 2.1 ##
**Mostrar los puentes configurados en el sistema operativo.**

Interfaces de red del sistema operativo:

![captura27](http://i.imgur.com/DfhyPsk.png)

Puentes configurado en el sistema operativo (ninguno ahora mismo):

![captura28](http://i.imgur.com/qmvV02N.png)

## Ejercicio 2.2 ##
**Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.**

Añadimos la interfaz puente y con ip addr show vemos que tenemos una interfaz de red llamada p2p1 (que es la que nos da conexión a internet):

![captura29](http://i.imgur.com/FScKRer.png)

Añadimos el puente a la interfaz, y lo activamos con:

```
sudo brctl addif puente p2p1
sudo ifconfig puente up
```
Y finalmente vemos que p2p1 está asociado al puente:

![captura30](http://i.imgur.com/VvFAf8x.png)

## Ejercicio 3.1 ##
**Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.**

He conseguido instalar Ubuntu Lucid:

![captura31](http://i.imgur.com/vU4yV4t.png)

## Ejercicio 3.2 ##
**Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.**

He instalado Rinse con:

```
$ sudo apt-get install rinse
```

Ahora vemos las imágenes que tenemos disponibles para instalar, e instalamos la que queramos:

![captura31](http://i.imgur.com/budELwE.png)

## Ejercicio 4 ##
**Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.**

He entrado al sistema ubuntu que instalamos previamente con debootstrap:

![captura32](http://i.imgur.com/9Btc3Ek.png)

Luego he instalado el paquete de idioma español, el compilador g++ y nano:

```
# apt-get install language-pack-es
# apt-get install g++
# apt-get install nano
```

Creamos un hola mundo en c++:

![captura32](http://i.imgur.com/GhUrece.png)

Lo compilamos y lo ejecutamos:

![captura33](http://i.imgur.com/13e6YG3.png)

## Ejercicio 5 ##
**Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.**

Para instalar nginx he tenido que descargar otra jaula, en este caso ubuntu saucy (tenía problemas con apt en ubuntu lucy y problemas con yum en fedora 19).

He añadido el respositorio de nginx al archivo /etc/apt/sources.list:

```
deb http://nginx.org/packages/ubuntu/ saucy nginx
deb-src http://nginx.org/packages/ubuntu/ saucy nginx
```

Después añadimos la clave pgp, instalamos y ejecutamos:e

```
# apt-get install wget
# wget http://nginx.org/keys/nginx_signing.key
# apt-key add nginx_signing.key
# apt-get update
# apt-get install nginx
# apt-get install curl
# service nginx start
```

Podemos comprobar que ha funcionado con curl:

![captura34](http://i.imgur.com/j57S3y4.png)

## Ejercicio 6 ##
**Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.**

He descargado los fuentes de jailkit e instalado con

```
$ ./configure && make && sudo make install
```

Después he creado una jaula:

```
# mkdir /home/jaulas/dorada
# jk_init -v -j /home/jaulas/dorada/ jk_lsh basicshell netutils editors
```

Finalmente creamos un usuario UNIX y lo enjaulamos:

```
# useradd jk_julio
# passwd jk_julio
# jk_jailuser -m -j /home/jaulas/dorada/ jk_julio
``` 
