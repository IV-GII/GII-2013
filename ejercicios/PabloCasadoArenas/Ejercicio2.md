# Segunda parte de los ejercicios
## Tema 5 Almacenamiento
### Ejercicio 1
En el portatil el disco duro es un SSD con particiones de recuperacion, boot y Windows.
En el de sobremesa hay un SSD con particion Windows y Linux y un HDD mecánico con una particion para datos.
Los ordenadores de la facultad usan un sistema de archivos remoto NFS.

SAN comercial de Dell:
http://www.dell.com/us/business/p/storage-san
6581,92 $

NAS local, FreeNAS Mini
http://www.amazon.com/FreeNAS-Mini-Network-Attached-Diskless/dp/B00EQJ1BTU

995 $

### Ejercicio 2

Inicializamos el bash de nuestra maquina virtual.
` sudo docker run -i -t ubuntu /bin/bash `

Instalamos FUSE.
`sudo apt-get install sshfs`
Añadimos nuestro usuario.
`sudo usermod -a -G fuse pablo`

Tratamos de conectarnos.
`sshfs pablo@172.17.0.2:/ /mnt/prueba`

![Imgur](http://i.imgur.com/RWK8KJI.png)

Nos da error que no he podido resolver.

### Ejercicio 3

Primero creamos el fichero vmdk.

`sudo qemu-img create -f vmdk prueba.vmdk 2M`

Luego creamos un archivo con el formato qcow2.

`sudo qemu-img create -f qcow2 pruebacow.qcow2 2M`

No se pueden montar debido a que no tienen formato,le damos formato:

`sudo apt-get install btrfs-tools`

Le damos formato btrfs

`sudo mkfs.btrfs -f /dev/loop1`

### Ejercicio 4

Creamos el fichero

`qemu-img create -f raw fichero-xfs.img 100M`

Bucle

`sudo losetup -v -f fichero-xfs.img`
Formato xfs

`sudo mkfs.xfs /dev/loop2`

Lo montamos

`sudo mount /dev/loop2 /mnt/loop2`

### Ejercicio 5

Instalamos con:

`sudo apt-get install ceph-mds`

### Ejercicio 6

Crear directorios

`sudo mkdir -p /srv/ceph/{osd,mon,mds}`

Fichero configuración

![Imgur](http://i.imgur.com/1yh8Cqy.png)

```
[global]
log file = /var/log/ceph/$name.log
pid file = /var/run/ceph/$name.pid
[mon]
mon data = /srv/ceph/mon/$name
[mon.mio]
host = ubuntu
mon addr = 127.0.0.1:6789
[mds]
[mds.mio]
host = ubuntu
[osd]
osd data = /srv/ceph/osd/$name
osd journal = /srv/ceph/osd/$name/journal
osd journal size = 1000 ; journal size, in megabytes
[osd.0]
host = ubuntu
devs = /dev/loop0

```

Tratamos de iniciarlo y no funciona aunque este en formato xfs. Probablemente un bug del programa.
![Imgur](http://i.imgur.com/htV8fdr.png)

