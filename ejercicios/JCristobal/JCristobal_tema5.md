#Ejercicios de JCristobal (José Cristóbal López Zafra)

# Tema 5

[Enlace al tema](http://jj.github.io/IV/documentos/temas/Almacenamiento)


##Ejercicio 1 (sin acabar)
###¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?
En mi discuro duro tengo 2 particiones, con Ubuntu 14.10 y Windows 8.1 instalados respectivamante.

###Si tienes acceso en tu escuela o facultad a un ordenador común para las prácticas, ¿qué almacenamiento físico utiliza?

###Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.


##Ejercicio 2
###Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión. 

Instalamos sshfs con `sudo apt-get install sshfs` y ya podemos trabajar con el.

Dentro de la máquina virtual, donde accedemos en mi caso con `sudo docker run -i -t ubuntu /bin/bash`, lo instalamos también. 

(fuse ya está instalada y actualizado en ambos)

En el anfitrión, tenemos que añadir al grupo fuse el usuario con el que nos conectaremos remotamente a la máquina virtual, para este caso vamos a usar un usuario llamado "usuario": `sudo usermod -a -G fuse usuario`

Creamos en la máquina virtual un directorio llamado act2 y dentro un [archivo vacío para las comprobaciones](http://i.imgur.com/pinPjBB.png).

Y comprobramos la ip con `ifconfig`, en mi caso 172.17.0.4

Desde la terminal del anfitrión nos conectamos con: `sshfs usuario@172.17.0.4:/home/act2 /home/jcristobal/Escritorio/directorioRemoto/` y vemos que la carpeta de "directorioRemoto" está lista para acceder a sus recursos remotos:

![imagen](http://i.imgur.com/NxBOYIp.png)

Pero al intentar acceder a ella nos devuelve el error ["El otro extremo de la conexión no está conectado"](http://i.imgur.com/5eOTt4m.png), fallo que no consigo arreglar, ya que está todo aparentemente correcto y la máquina virtual está activada.

[Error en consola también](http://i.imgur.com/mhlKsOV.png)


> 
> Para evitar el error de ["read: Connection reset by peer"](http://i.imgur.com/kCKdVcv.png) consulté el siguiente [enlace](https://forum.manjaro.org/index.php?topic=11363.0), donde me indica que añada el usuario en /etc/ssh/sshd_config.
> 


##Ejercicio 3
###Crear imágenes con estos formatos (y otros que se encuentren tales como VMDK) y manipularlas a base de montarlas o con cualquier otra utilidad que se encuentre


Creamos el primero con el formato qcow2: `sudo qemu-img create -f qcow2 fichero-cow.qcow2 5M`

y el segundo con formato vmdk: `sudo qemu-img create -f vmdk fichero-vmdk.vmdk 5M`

Podremos ver información de estas imágenes ejecutando `qemu-img info [nombre de la imagen]`, usando "quemu-utils"

![imagen](http://i.imgur.com/awiDK0q.png)


Montamos la imagen como un dispositivo loop:

sudo mount -o loop,offset=32256 fichero-cow.qcow2 /mnt/monta1

pero como nos indica nos da fallo.

Para arregarlo lo convertirlos en un dispositivo loop con: `sudo losetup -v -f fichero-cow.qcow2` y darle formato, "ext3" por ejemplo: `sudo mkfs.ext3 /dev/loop0`

![imagen](http://i.imgur.com/bG66Xem.png)


Algunos formatos de estas imágenes los reconoce [VirtualBox](https://www.virtualbox.org/): VMDK,VMD,VHD, VDI... Crearemos una con formato VDI (`sudo qemu-img create -f vdi ficherovdi.vdi 10M`) que podemos usar en VirtualBox:

![imagen](http://i.imgur.com/pniTX64.png)


##Ejercicio 4
###Crear uno o varios sistema de ficheros en bucle usando un formato que no sea habitual (xfs o btrfs) y comparar las prestaciones de entrada/salida entre sí y entre ellos y el sistema de ficheros en el que se encuentra, para comprobar el overhead que se añade mediante este sistema

Creamos un par de imágenes, con `sudo qemu-img create -f raw  fichero1.img 100M` y `sudo qemu-img create -f raw  fichero2.img 100M`

Y le damos formato `sudo losetup -v -f fichero1.img` y `sudo mkfs.xfs /dev/loop0` (en mi caso necesito tener instalado el programa mkfs.xfs, lo hago con `sudo apt-get install xfsprogs`)

Lo mismo con la otra imagen: `sudo losetup -v -f fichero2.img` y `sudo mkfs.btrfs /dev/loop1`
También necesito mkfs.btrfs, que instalo con `sudo apt-get install btrfs-tools`

![imagen](http://i.imgur.com/JEvYj07.png)

Y los montamos en las carpetas "montaje1" y "montaje2": `sudo mount -t xfs /dev/loop0 /mnt/montaje1` y`sudo mount -t btrfs /dev/loop1 /mnt/montaje2`


Y se crea un archivo de bloques de 50M para copiarlo en ambos sistemas de ficheros para comprobar cuál de los dos sistemas es más rápido.

`dd if=/dev/urandom of=fichero bs=1k count=50k`

![imagen](http://i.imgur.com/gfRc4lf.png)

Y copiamos el archivo mostrando información sobre el tiempo que tarda en ejecutarse en la primera imagen:

`sudo time -v cp fichero /mnt/montaje1/fichero`

![imagen](http://i.imgur.com/GUC6SkN.png)

Y en la segunda imagen:

`sudo time -v cp fichero /mnt/montaje2/fichero`

![imagen](http://i.imgur.com/ZfoYxqD.png)


Vemos que el tiempo transcurrido en ambos es de 2 segundos, pero con formato XFS usa el 100% de la CPU, mientras que con BTRFS usa el 96%



##Ejercicio 5
###Instalar ceph en tu sistema operativo. 

Primero ejecutamos `sudo apt-get install ceph-mds` , que instala algunos paquetes como ceph-fs-common, ceph y ceph-common.


##Ejercicio 6
###Crear un dispositivo ceph usando BTRFS o XFS

Creamos los directorios donde se va a almacenar la información de CEPH: `sudo mkdir -p /srv/ceph/{osd,mon,mds}`

Creamos el archivo /etc/ceph/ceph.conf y añadimos:

```
[global]
log file = /var/log/ceph/$name.log
pid file = /var/run/ceph/$name.pid
[mon]
mon data = /srv/ceph/mon/$name
[mon.jcristobal-Aspire-V3-572G]
host = jcristobal-Aspire-V3-572G
mon addr = 127.0.0.1:6789
[mds]
[mds.jcristobal-Aspire-V3-572G]
host = jcristobal-Aspire-V3-572G
[osd]
osd data = /srv/ceph/osd/$name
osd journal = /srv/ceph/osd/$name/journal
osd journal size = 1000 ; journal size, in megabytes
[osd.0]
host = jcristobal-Aspire-V3-572G
devs = /dev/loop0
```

Crearemos un sistema bucle con formato XFS para que haga la función de dispositivo servidor de objetos (/dev/loop0/):

Ejecutamos `qemu-img create -f raw ceph.img 3G`, `sudo losetup -v -f ceph.img` y`sudo mkfs.xfs /dev/loop0`


Y creamos un directorio para el servidor de objetos: `sudo mkdir /srv/ceph/osd/osd.0`

Creamos el sistema de ficheros de objetos: `sudo /sbin/mkcephfs -a -c /etc/ceph/ceph.conf`

![imagen](http://i.imgur.com/hweLels.png)


Para iniciar el servicio ejecutamos: `sudo /etc/init.d/ceph -a start`


##Ejercicio 7
###Almacenar objetos y ver la forma de almacenar directorios completos usando ceph y rados. 

Primero crearemos una piscina con: `sudo rados mkpool esa-piscina`

Y para almacenar un "objeto" en "archivo.img" (fichero que almacenaremos) ejecutamos `rados put -p esa-piscina objeto archivo.img`






