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

##1. Mostrar los puentes configurados en el sistema operativo.##

Instalamos el paquete bridge-utils con el siguiente comando:

~~~
sudo apt-get install bridge-utils
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio2_1.png)

Una vez instalado dicho paquete, ejecutamos el comando:

~~~
brctl show
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio2_2.png)

##2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.##

Primero creamos la interfaz virtual ejecutando el siguiente comando:

~~~
sudo brctl addbr interfaceIV
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio2_3.png)

Para asignarlo al interfaz de la tarjeta wifi ejecutamos el siguiente comando:

~~~
sudo brctl addif interfaceIV wlan0
~~~

Por ultimo realizamos la activación con el siguiente comando:

~~~
ifconfig interfaceIV up
~~~


#Ejercicio 3#

##1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.##

Instalamos debootstrap:

~~~sudo apt-get install debootstrap~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio3_1.png)

Una vez instalado creamos el directorio donde realizaremos la instalación. Después ejecutamos la siguiente instrucción, que se encargará de instalar el sistema. En el segundo argumento le indicamos el nombre de la distro que se va a buscar en el repositorio, en este caso trusty.

~~~sudo debootstrap --arch=amd64 trusty jaulas/trusty/ http://archive.ubuntu.com/ubuntu~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio3_2.png)

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio3_3.png)

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio3_4.png)


##2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.##

Lo primero que hacemos es instalar rinse:

~~~sudo apt-get install rinse~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio3_5.png)


A continuación realizamos la instalación de Fedora en el directorio "jaulas/fedora". Para ello ejecutamos:

~~~sudo rinse --arch=amd64 --distribution fedora-core-6 --directory jaulas/fedora~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio3_6.png)

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio3_7.png)



#Ejercicio 4#
##Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.##

Usamos el sistema instalado anteriormente en "jaulas/trusty"

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio4_1.png)

Una vez dentro del sistema montamos el diretorio proc con el siguiente comando:

~~~mount -t proc proc /proc~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio4_2.png)

Una vez montado, vamos a crear una aplicación que nos muestre "Hola Mundo" con python. Para ello instalamos "python" y "nano".

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio4_3.png)


#Ejercicio 5#
##Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.##

Para instalar nginx usamos ~~~apt-get install nginx~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema3/ejercicio5_1.png)



#Ejercicio 6
##Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.##
