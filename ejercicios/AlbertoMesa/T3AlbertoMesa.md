

#Alberto Mesa Navarro
##Técnicas de Virtualización
##Ejercicios del Tema 3

###Ejercicio 1
####Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback.

Usaremos unshare con la opción -u, indicando así que vamos a crear un espacio de nombres Unix Time Sharing System (UTS). A continuación comprobamos que es corecto con la orden hostname:

$sudo unshare -u /bin/bash
$hostname ejercicios

![1](http://s21.postimg.org/x28hjv2if/unshare1.png)

Para montarlo adecuadamente deberá existir la carpeta destino en /mnt, en mi caso se ha creado /mnt/IV. Usaremos el comando "mount" junto al especificador de opciones "-o", y como vemos en la captura se ha utilizado el loopback de Linux para montar archivos que contengan un sistema de archivos. No ha sido necesario especificar si se trata de una imagen iso9660 o udf:

$mount -o loop disk.iso /mnt/IV

![2](http://s30.postimg.org/qqq8kulgh/mount.png)

###Ejercicio 2
####1. Mostrar los puentes configurados en el sistema operativo.

Para listar los puentes usaremos $brctl show. Ver captura:

![3](http://s7.postimg.org/pdyaw317f/brctlshow.png)

####2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

En este apartado primero hemos creado el puente:
$addbr puenteIV 

Con $brctl show hemos comprobado que, aún existiendo, no le corresponde ninguna interfaz. Como en esta ocasión estoy trabajando con una conexión Ethernet, le añado la interfaz eth0:
$brctl addif puenteIV eth0

Una vez tiene su MAC y se le ha asignado una interfaz podemos consultar de nuevo $brctl show y podemos consultar los interfaces con $ip addr show.
Se muestra una captura del proceso completo:

![4](http://s24.postimg.org/mbwul4het/brctl.png)

Si queremos, al acabar podemos deshacer los cambios:
$brctl delif puenteIV eth0
$brctl delbr puenteIV eth0


###Ejercicio 3
####1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.

Para usar debootstrap deberemos indicar el tipo de arquitectura (32 bits), el nombre de la distribución que deseamos (Trusty Tahr), la ruta de instalación (/home/jaulas/trusty) y la dirección de Ubuntu:
$debootstrap --arch=i386 trusty /home/jaulas/trustytahr/ http://archive.ubuntu.com/ubuntu

![5](http://s13.postimg.org/uj6yabbrr/debootstrap.png)

####2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.

Rinse (usado para "cualquier" distribución RPM desde "cualquier" distro Debian) no viene por defecto en Ubuntu 14.04:
$sudo apt-get install rinse

Una vez instalado Rinse podemos experimentar con la creación del sistema Fedora, eligiendo, por ejemplo, Fedora 10:

$rinse --arch i386 --distribution fedora-core-10 --directory /home/alberto/fedora10

El proceso terminará con el mensaje: 
Final tidy...
Installation complete.

A continuación vemos una captura durante el proceso de instalación. Se ha elegido solo un fragmento por el gran número de líneas mostradas por pantalla durante el proceso:

![6](http://s29.postimg.org/huai0thtz/fedora10.png)

###Ejercicio 4
####Instalar algun sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.

Ya teníamos instalado Ubuntu en el ejercicio 3 (recordar que usamos $debootstrap --arch=i386 trusty /home/jaulas/trustytahr/ http://archive.ubuntu.com/ubuntu), por tanto usaremos ese:

$chroot /home/jaulas/trustytahr
Si ejecutamos vim, por ejemplo, vemos que no está instalado. Lo instalamos con apt-get y luego lo probamos. Ver capturas:

![7](http://s12.postimg.org/47a805c0t/image.png)

![8](http://s15.postimg.org/3l82glkwr/vim.png)

###Ejercicio 5
####Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.

Antes crearemos un usuario:
$useradd -s /bin/bash -m -d /home/jaulas/trustytahr/./home/albertrusty -c "trusty alberto" -g users albertrusty

Si todo ha ido bien, al usar "su albertrusty" desde la terminal, debe redirigirse al usuario a la jaula automáticamente. Lo comprobamos:

![9](http://s2.postimg.org/xry2trx7d/albertrusty.png)

Instalamos nginx como pide el ejercicio.
$chroot trustytahr/
$apt-get install nginx

![10](http://s3.postimg.org/86342n937/nginx.png)

Si no nos basta, podemos usar curl para la página principal por defecto de nginx:
$curl localhost

![11](http://s15.postimg.org/rw50l6ior/curlnginx.png)


###Ejercicio 6
####Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.

Podemos descargar Jailkit y seguir los pasos desde la URL de [este enlace](http://www.binarytides.com/install-jailkit-ubuntu-debian/) . Además de pasos básicos hay algunos opcionales para la instalación de Jailkit.

Necesitaremos instalar algunas herramientas que tendremos que utilizar, como wget y otras que nos harán falta al instalar (python, gcc, make): 
$sudo apt-get install wget
$sudo apt-get install make
$sudo apt-get install gcc
$sudo apt-get install python

Posteriormente usamos el link que viene en el enlace tutorial indicado arriba:
$wget http://olivier.sessink.nl/jailkit/jailkit-2.17.tar.gz

![12](http://s29.postimg.org/plfs6k70n/wgetjailkit.png)

Descomprimimos con tar:
$tar -xzvf jailkit-2.17.tar.gz

En el nuevo directorio que se ha creado con el contenido del tar, ejecutamos:
$./configure && make && sudo make install

La instalación se habrá realizado correctamente si observamos el mensaje final "appending /usr/sbin/jk_chroots to /etc/shells"

Para enjaular a un usuario necesitamos una jaula (recordar que ahora soy super usuario, usar sudo cuando se requiera en otros casos). Se han seguido los pasos de [este enlace](http://www.javcasta.com/2010/11/28/jaula-en-ubuntu-con-jailkit/)

Creamos un directorio para la jaula:
$mkdir /home/jaulaej6

Hacemos propietario a root: 
$chown root:root /home/jaulaej6

Damos permisos:
$chmod 0755 /home/jaulaej6

Establecemos lo que podrá usarse dentro de esa jaula (lo que se la pase al comando obviamente deberá estar instalado)
$jk_init -v /home/jaulaej6 basicshell editors extendedshell netutils ssh sftp

Creamos un usuario nuevo y le asignamos la jaula creada:
$adduser usuarioej6

Asignamos la jaula:
$jk_jailuser -m -j /home/jaulaej6 usuarioej6
$passwd usuarioej6

Por último, se crea el home del usuario en la jaula, haciéndolo propietario de su home:
$mkdir -p /home/jaulaej6/home/usuarioej6
$chown usuarioej6:uaurioej6 /home/jaulaej6/home/usuarioej6


