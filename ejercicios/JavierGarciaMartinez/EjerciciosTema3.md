# Ejercicio 1 #
##Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback##

Creamos un espacio de nombres de tipo UTS. Para ello, vamos a ejecutar el siguiente comando:

<code>sudo unshare -u /bin/bash</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-5.png">

Ahora vamos a proceder a crear la carpeta donde realizaremos el montaje. Para ello, ejecutamos lo siguiente:

<code>mkdir /mnt/IV</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-3.png">

Y una vez que tenmos la carpeta creada, montaremos la imagen ISO utilizando el dispositivo loopback. Ejecutaremos el comando:

<code>mount -o loop ubuntu-14.04.1-server-amd64.iso /mnt/IV</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-4.png">

# Ejercicio 2 #
##1. Mostrar los puentes configurados en el sistema operativo. ##

Para mostrar los puentes configurados en el sistemas operativo, lo primero que tenemos que hacer será instalar el paquete necesario para listarlo. Para ello, ejecutaremos lo siguiente:

<code>sudo apt-get install bridge-utils</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-6.png">

Una vez instalado dicho paquete, vamos a ejecutar el comando <code>brctl show</code>.

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-7.png">

##2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.##

Para crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi hacemos lo siguiente.

Lo primero que haremos será crear la interfaz virtual. Para ello, ejecutaremos el siguiente comando:

<code>sudo brctl addbr interfaceEjerIV</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-8.png">

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-9.png">

Si quisieramos eliminar dicho puente bastaria con hacer <code>sudo brctl delbr interfaceEjerIV</code>

Posteriormente, añadiremos wlan0 al puente con el siguiente comando:

<code>sudo brctl addif interfaceEjerIV wlan0</code>

Si lo que queremos es anular este último basta con hacer:

<code>sudo brctl delif interfaceEjerIV wlan0</code>

Finalmente, para realizar la activación, ejecutaremos lo siguiente:

<code>ifconfig interfaceEjerIV up </code>

#Ejercicio3#
##1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.##

En primer lugar, instalaremos debootstrap. Para ello, vamos a ejecutar lo siguiente:

<code>sudo apt-get install debootstrap</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-10.png">

Una vez que lo tengamos instalado, vamos a crear el directorio donde realizaremos la instalación.

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-11.png">

Por último, ejecutaremos la siguiente orden:

<code>sudo debootstrap --arch=i386 lucid /home/jaulas/lucid/ http://archive.ubuntu.com/ubuntu </code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-12.png">

Finalmente, cuando acabe la instalación, quedará así:

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-13.png">

##2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.##

Lo primero que deberemos hacer es instalar "rinse". Para ello, vamos a ejecutar lo siguiente:

<code>apt-get install rinse</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-14.png">

Para ver la lista de sistemas que hay disponibles podemos ejecutar la orden <code>rinse --list-distributions</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-15.png">

Una vez localizado el sistema que vamos a usar, crearemos un directorio nuevo donde meteremos nuestro sistema Fedora:

<code>mkdir /home/jaulas/fedora</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-16.png">

Ahora ejecutaremos la siguiente orden y comenzara a descargarse la distribución que hayamos elegido:

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-17.png">

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-18.png">

INSTALACIÓN COMPLETA

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-19.png">

#Ejercicio 4#
##Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.##

Lo primero que vamos a hacer es instalar el sistema Debian. Para ello hago lo siguiente:

<code>sudo debootstrap --arch=i386 wheezy /home/jaulas/debian http://ftp.debian.org/debian/</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-20.png">

FINALIZACIÓN INSTALACIÓN

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-21.png">

El siguiente paso es usar "chroot" para poder entrar en la jaula, usando el siguiente comando:

<code>chroot /home/jaulas/debian</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-22.png">

Voy a probar a ejecutar el comando "free".

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-25.png">

Como podemos observar nos da un error. Para solucionar dicho error, ejecutaremos lo siguiente:

<code>mount proc /proc -t proc</code>

Y como podemos observar ya no nos saldrá el error.

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-26.png">

Ahora crearemos un script en Python para compilarlo y ejecutarlo.

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-23.png">

Le daremos permisos de ejecución con <code>chmod +x hola.py</code>

Y ahora pasaremos a ejecutarlo con el comando <code>python hola.py</code>

<img src="https://github.com/javiergama8/Images/blob/master/Tema3-24.png">
