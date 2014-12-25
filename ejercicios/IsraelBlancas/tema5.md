Lista de ejercicios Israel Blancas Álvarez
============================

#TEMA 5: Virtualización del almacenamiento#


##Sesión 9-12-2014##

##Ejercicio 1##

#####¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?#####
#####Si tienes acceso en tu escuela o facultad a un ordenador común para las prácticas, ¿qué almacenamiento físico utiliza?#####
#####Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.#####

######Mis particiones######
![Particiones](http://fotos.subefotos.com/5b2dc8339d57358fbcc56fbacb6dfde2o.jpg)

No tengo VLM.
Tengo tres particiones:
+ Una para boot
+ Otra para Windows
+ Otra extendida donde tengo Linux



######Comparación######
+ [Drobo B1200i SAN ARRAY RAID 12 bahías](http://www.macnificos.com/product.aspx?p=7918&gclid=CIP12_bd3sICFefMtAodbx4A7Q#productTabs):
  + 4.331,05 €
  + 4 puertos Ethernet 100/1000 Mbps iSCSI
  + 12 bahías para 1 a 12 discos duros 3,5" SAS 1 y 2 o SATA I, II y III o 2 a 3 SSDs con hasta 9 HDDs
  + Compatibilidad: Conecta con Mac, Linux, Windows y sistemas VMware y soporta   NTFS, HFS+, ext3, y archivos de sistema con formato VMFS
  + Características BeyondRAID: expansión instantánea, Unidad Mixta de tamaño de utilización, Niveles de protección automática, la redundancia de discos doble, Virtual Hot Spare, Data Aware, re ordenación del disco
  + Protocolos de Red iSCSI, Autenticación CHAP
+ [C8R15A HP MSA 2040 SAN DC SFF Storage](http://www.senetic.es/product/C8R15A?gclid=CM6Dhv7f3sICFfQatAodalYAkA):
  + 6.835,63 €
  + Hasta 24  TB
  + 8 host Fibre Channel
  + SCSI
  + Unidades: 24 HDD, SSD
  + Caché interna: 256MB

Un PC normal dispone de mucho menos almacenamiento. Además, los sistemas de protección que tienen estos dispositivos son mucho mejores que los que pueda tener un PC normal brindando, probablemente, posibilidad de intercambio de discos en caliente, algo que no es posible en los PC.


***

##Ejercicio 2##

#####Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.#####

#####Avanzado Usar los drivers de FUSE para Ruby (aquí explican más o menos como hacerlo con fusefs para mostrar el contenido de una estructura de datos en un lenguaje como si fuera un fichero. Este es un ejemplo en Python.#####

Antes de empezar con la instalación, es importante saber si tenemos cargado "fuse". Para saberlo, ejecutamos

```bash
lsmod | grep fuse
```

Si el comando nos devuelve algo tipo "fuse 81531 2", tendremos el módulo cargado y podremos continuar. En caso contrario, deberemos ejecutar, tanto en la máquina que hará de cliente como en la servidora, los siguientes comandos:

```bash
modprobe fuse
depmod -A
```

Ahora, instalamos (en las dos máquinas), sshfs.

```bash
sudo apt-get install sshfs
```

En la máquina cliente, creamos una carpeta donde vayamos a montar la carpeta remota y ejecutamos:

```bash
sshfs [usuario remoto]]@[IP remota]]:[carpeta remota a montar] [punto de montaje]
```

En mi caso,

```bash
sshfs iblancasa@192.168.169.130:/home/iblancasa/carpeta /home/iblancasa/asd
```

Si hay problemas de conexión, hay que asegurarse que la IP de la máquina remota sea la correcta (mediante el comando ``ifconfig`` en la máquina remota y ``ping [IP remota]``para comprobar que hay conexión). Una vez comprobado esto, podemos intentar conectar por SSH a la máquina remota (comprobando que tengamos instalado openssh server, ``sudo apt-get install openssh-server`` y editando el fichero /etc/ssh/sshd_config para que el puerto quede configurado como el 22 y se permita acceder con el usuario deseado).

Una vez tengamos hecho esto, los cambios que hagamos en local (o en remoto), se verán reflejados en la otra máquina.


***

##Ejercicio 3##

#####Crear imágenes con estos formatos (y otros que se encuentren tales como VMDK) y manipularlas a base de montarlas o con cualquier otra utilidad que se encuentre#####

En primer lugar, es necesario instalar quemu:

```bash
sudo apt-get install qemu-system
```

Creación y montaje de un almacenamiento virtual:

```bash
sudo qemu-img create -f qcow2 cow.qcow2 5M
sudo losetup -v -f cow.qcow2
sudo mkfs.ext4 /dev/loop0
```

Dando como resultado:

![Captura](http://fotos.subefotos.com/247fc6e21da14cf19cf07a008bdd970bo.jpg)

Una utilidad puede ser, por ejemplo, para gestionar los recursos de almacenamiento de distintas máquinas virtuales que tengamos en nuestro sistema.


***

##Ejercicio 4##

#####Crear uno o varios sistema de ficheros en bucle usando un formato que no sea habitual (xfs o btrfs) y comparar las prestaciones de entrada/salida entre sí y entre ellos y el sistema de ficheros en el que se encuentra, para comprobar el overhead que se añade mediante este sistema#####

Antes de nada, hay que instalar algunas herramientas:

```bash
sudo apt-get install btrfs-tools xfsprogs
```

Lo primero es crear las imágenes:

```bash
sudo qemu-img create -f raw  a.img 200M
sudo qemu-img create -f raw  b.img 200M
```

Después se ponen en loop y se les da formato

```bash
sudo losetup -v -f a.img
sudo losetup -v -f b.img
sudo mkfs.xfs /dev/loop2
sudo mkfs.btrfs /dev/loop3
```

Creamos el punto de montaje y las montamos:

```bash
sudo mkdir mnt/m1
sudo mkdir mnt/m2
sudo mount -t xfs /dev/loop2 /mnt/m1
sudo mount -t xfs /dev/loop3 /mnt/m2
```

Y se copia un fichero que sea bastante grande. Yo he copiado un ejecutable:
```bash
sudo time -v cp p1 /mnt/m1/p1
sudo time -v cp p1 /mnt/m2/p1
```

El primero ha tenido un system time de 0.5 segundos. El segundo, de 0.52 segundos.


***

##Ejercicio 5##

#####Instalar ceph en tu sistema operativo.#####

Solo hay que ejecutar ``sudo apt-get install ceph-mds``


***

##Ejercicio 6##

#####Crear un dispositivo ceph usando BTRFS o XFS#####
#####Avanzado: Usar varios dispositivos en un nodo para distribuir la carga.#####

Se crean los directorios

```bash
sudo mkdir -p /srv/ceph/{osd,mon,mds}
```

Se crea el fichero de configuración /etc/ceph/ceph.conf

```
[global]
log file = /var/log/ceph/$name.log
pid file = /var/run/ceph/$name.pid
[mon]
mon data = /srv/ceph/mon/$name
[mon.mio]
host = iblancasaPC
mon addr = 127.0.0.1:6789
[mds]
[mds.mio]
host = iblancasaPC
[osd]
osd data = /srv/ceph/osd/$name
osd journal = /srv/ceph/osd/$name/journal
osd journal size = 1000 ; journal size, in megabytes
[osd.0]
host = iblancasaPC
devs = /dev/loop4
```

Creamos el sistema:

```bash
qemu-img create -f raw ceph.img 100M
sudo losetup -v -f ceph.img
sudo mkfs.xfs /dev/loop4
```

Creamos un directorio y el sistema de ficheros:

```bash
sudo mkdir /srv/ceph/osd/osd.0
sudo /sbin/mkcephfs -a -c /etc/ceph/ceph.conf
```

![Capture](http://fotos.subefotos.com/a05f2bdd3b81f95017d77045c69d00c9o.jpg)

Iniciamos el servicio

```bash
sudo /etc/init.d/ceph -a start
```

![Iniciando servicio](http://fotos.subefotos.com/f29af86b0fc3ee82a682d8667715697eo.jpg)

Creamos el directorio donde queramos montar y montamos:

```bash
sudo mkdir /mnt/ceph
sudo mount -t ceph iblancasaPC:/ /mnt/ceph
```
