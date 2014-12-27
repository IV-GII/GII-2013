##Tema 5:

###Ejercicio 1

1. ¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?
Actualmente utilizo varios sistemas operativos, en el portatil uso OSX y maquina virtual linux, y en el de sobremesa windows 7 debido al uso que le doy, ademas tengo maquinas virtuales de linux para hacer pruebas y otra maquina virtual como servidor apache. Una de las maquinas virtuales la utilizo como pruebas de maquinas emulando que estan dentro de una red y son las que normalmente utilizo para la asignatura de IV, por lo que no utilizo particiones directamente, de todas maneras muchas veces he utilizado directamente discos duros diferentes.

Particiones de maquina virtual:

<img src="http://i58.tinypic.com/msmwao.jpg"/>

Como podemos observar solo tengo las particiones tipicas de una particion de linux
Si tienes acceso en tu escuela o facultad a un ordenador común para las prácticas, ¿qué almacenamiento físico utiliza?

No puedo consultarlo no estoy en la facultad.

Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.

Vamos a coger por ejemplo esta: http://www.dell.com/us/business/p/powervault-md36x0f-series/pd

En este caso los diferentes discos duros estan conectados por fibra optica, solo por conexiones de fibra optica en un pc seria casi imposible, las placas bases normales no permiten tantas conexiones de discos duros, por lo que dispondria de mucho menos almacenamiento. Ademas tiene distintos sistemas que tendriamos que configurar en nuestro PC, como las aplicaciones remotas, Snapshots, copia de discos virtuales, discos que se encriptan a si mismos. Ademas de ofrecer un rendimiento mayor ya que han sido especificamente diseñados para eso.


###Ejercicio 2

Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.

Lo primero que hacemos es crear una copia de la maquina virtual en el virtual box y ejecutar los comandos para fuse

```` 
modprobe fuse
depmod -A
```` 

Instalamos sshfs en las dos maquinas:

<img src="http://i58.tinypic.com/1z56vjd.jpg"/>

Ahora como tenemos la misma ip en las dos maquinas, ya que hemos hecho un clon, modificamos la ip de una a 192.168.56.102 con el comando:

```` 
sudo ifconfig eth1 192.168.56.102/24
````

El /24 son los bits de la mascara de red, asi tenemos las dos maquinas dentro de la misma subred.

Ahora en la maquina que queremos que se hagan los cambios debemos de instalar y configurar un servidor ssh.

````
sudo apt-get install openssh-server
sudo gedit /etc/ssh/ssh_config
````

Y quitamos el # en la linea #Port 22 y guardarmos el archivo.

Ahora creamos las carpetas que queremos que sean iguales tanto en el servidor como en el cliente, en este caso les he llamado a las 2 "ejercicio2".

Ahora simplemente vamos a linkar ambas carpetas:

````
sshfs alumno@192.168.56.102:/home/alumno/ejercicio2 /home/alumno/ejercicio2
````

Nos pedira la contraseña del usuario remoto. Una vez establecida todo lo que hagamos dentro de la carpeta ejercicio2 en local o en remoto se vera reflejado en ambas maquinas.

<img src="http://i61.tinypic.com/o8yqhl.jpg"/>

Si se cierra la maquina remota no puede seguir operando.

###Ejercicio 3:

Primero instalamos qemu:

````
sudo apt-get install qemu-system
````

Creamos el VMDK

````
qemu-img create -f qcow2 fichero-cow.qcow2 5M
````

<img src="http://i58.tinypic.com/kaqkxd.jpg"/>

Ahora montamos el VMDK:

````
sudo losetup -v -f fichero-cow.qcow2
//Nos informa que: El dispositivo de bucle es /dev/loop0
sudo mkfs.ext4 /dev/loop0
````

<img src="http://i59.tinypic.com/255ifix.jpg"/>

###Ejercicio 4

Crear uno o varios sistema de ficheros en bucle usando un formato que no sea habitual (xfs o btrfs) y comparar las prestaciones de entrada/salida entre sí y entre ellos y el sistema de ficheros en el que se encuentra, para comprobar el overhead que se añade mediante este sistema.

Primero debemos instalar algunos programas para poder hacer las imagenes en xfs y btrfs

````
sudo apt-get install xfsprogs
sudo apt-get install btrfs-tools
````

Ahora creamos con qemu las dos imagenes (btrfs nos pide que la imagen sea de al menos 256 megas pues lo ponemos a 300M):

````
sudo qemu-img create -f raw  imagen1.img 300M
sudo qemu-img create -f raw  imagen2.img 300M
sudo losetup -v -f imagen1.img
sudo losetup -v -f imagen2.img
sudo mkfs.xfs /dev/loop4
sudo mkfs.btrfs /dev/loop3
````

<img src="http://i61.tinypic.com/w18ak2.jpg"/>

Dentro de la carpeta mnt creamos dos carpetas para las imagenes:

````
sudo mkdir carpeta1
sudo mkdir carpeta2
````

Ahora montamos las imagenes:

````
sudo mount -t xfs /dev/loop4 /mnt/carpeta1
sudo mount -t btrfs /dev/loop3 /mnt/carpeta2
````

Ahora simplemente vamos a copiar algun fichero (Una imagen de la practica anterior de unos 100 megas).

````
sudo time -v cp CorePlus-current.iso /mnt/carpeta1/CorePlus-current.iso
sudo time -v cp CorePlus-current.iso /mnt/carpeta2/CorePlus-current.iso
````

Y como resultado:

<img src="http://i58.tinypic.com/2lqr04.jpg"/>



###Ejercicio 5

Para instalarlo simplemente:

````
sudo apt-get install ceph-mds
````


###Ejercicio 6










