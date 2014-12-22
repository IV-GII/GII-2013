##TEMA 5

#VIRTUALIZACIÓN

#Clase del 4 de Noviembre de 2014

* [+]Ejercicio 1
 - A) ¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?

Desde Mac os x, uso "partition inspector", que hace un analisis de todo lo que tengo instalado.

Lo ejecutamos, entonces se nos mostrará todos los volúmenes lógicos instalados en nuestro equipo, así como todas las particiones y que hay, en caso de que se tengan.
En mi caso, solo tengo un disco duro y varias particiones realizadas, que son:

    Mac os x
    Linux
    Windows

Esta sería la respuesta que me da "Partition inspector":
```
*** Report for internal hard disk ***

Current GPT partition table:
 #      Start LBA      End LBA  Type
 1             40       409639  EFI System (FAT)
 2         409640    426086151  Mac OS X HFS+
 3      432377856    497696767  Basic Data
 4      497698816    624880263  Basic Data

Current MBR partition table:
 # A    Start LBA      End LBA  Type
 1              1       409639  ee  EFI Protective
 2         409640    426086151  af  Mac OS X HFS+
 3 *    432377856    497696767  83  Linux
 4      497698816    624880263  07  NTFS/HPFS

MBR contents:
 Boot Code: Unknown, but bootable

Partition at LBA 40:
 Boot Code: None (Non-system disk message)
 File System: FAT32
 Listed in GPT as partition 1, type EFI System (FAT)

Partition at LBA 409640:
 Boot Code: None
 File System: HFS Extended (HFS+)
 Listed in GPT as partition 2, type Mac OS X HFS+
 Listed in MBR as partition 2, type af  Mac OS X HFS+

Partition at LBA 432377856:
 Boot Code: GRUB
 File System: ext3
 Listed in GPT as partition 3, type Basic Data
 Listed in MBR as partition 3, type 83  Linux, active

Partition at LBA 497698816:
 Boot Code: Windows BOOTMGR (Vista)
 File System: NTFS
 Listed in GPT as partition 4, type Basic Data
 Listed in MBR as partition 4, type 07  NTFS/HPFS
```

Como se puede [ver en la siguiente captura](https://www.dropbox.com/s/ld5lm8thfrbdtmu/Captura%20de%20pantalla%202014-12-22%20a%20la%28s%29%2020.58.27.png?dl=0), cada uno tiene su propio sistema de archivos.

 - B) Si tienes acceso en tu escuela o facultad a un ordenador común para las prácticas, ¿qué almacenamiento físico utiliza?

Si he podido tener acceso a los ordenadores de la escuela, en un aula de prácticas. Estos ordenadores usan un sistema de ficheros remoto, que no se encuntra en el ordenador local.


* [+]Ejercicio 2
 - A) Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.

Lo primero que hago es tener instalada una máquina anfitriona en el ordenador, en este caso tengo instalado un ubuntu para las practicas de clase.

El segundo paso es instalar tanto en la máquina anfitriona como en la máquina virtual "sshfs", con el siguiente comando:

    apt-get install sshfs

El tercer paso es crear en la máquina virtual un "usuario" y dentro de su directorio "/home" un directorio "pruebaSshfs", a la cual queremos acceder, dentro de "pruebaSshfs" meteremos algun archivo para poder visualizar después.

El cuarto paso será añadir el usuario creado al cual nos queremos conectar al grupo "FUSE". Seguidamente en la máquina anfitriona vamos a crear el directorio remoto "pruebaSshfs_remoto", en el cual montaremos "/home" de la máquina virtual. De esta manera, ya podemos acceder a los recursos remotos con la orden "sshfs", simplemente pasandole el usuario remoto, la IP de la mñaquina virtual, la ruta al directorio que hemos creado para compartir y la ruta del "/home" de la máquina anfitriona.

Los comandos usados en la explicación:

Para la máquina virtual:

    adduser prueba_iv
    su prueba_iv
    mkdir /home/pruebaSshfs
    touch prueba.txt
    usermod -G fuse -a prueba_iv

Para la máquina anfitriona:

    mkdir pruebaSshfs_remoto
    sshfs prueba_iv@10.0.3.134:/home /home/victorCoronas/pruebaSshfs_remoto

* [+]Ejercicio 3
 - A) Crear imágenes con estos formatos (y otros que se encuentren tales como VMDK) y manipularlas a base de montarlas o con cualquier otra utilidad que se encuentre.

Lo primero es entrar en [QEMU](http://en.wikibooks.org/wiki/QEMU/Images), donde podremos ver los diferentes tipos de imágenes que soporta. Todas la imágenes pueden ser generadas con el siguiente formato:

    qemu-img create -f [FORMATO] [NOMBRE_ARCHIVO] [TAMAÑO]

Algunos ejemplos de como crearlas:

    raw: qemu-img create -f raw imagen-raw.img 50M
    vdi: qemu-img create -f vdi imagen-vdi.vdi 50M
    qcow2: qemu-img create -f qcow2 imagen-qcow2.qcow2 50M
    vmdk: qemu-img create -f vmdk imagen-vmdk.vmdk 50M

Cuando hayamos creado estos ficheros vamos a montarlos, pero nos dará un "error", ya que no tienen ningun formato asignado.

    mount -o loop,offset=32256 imagen-raw.img /mnt/imagen


    modprobe nbd max_part=16
    qemu-nbd -c /dev/nbd1 imagen-raw.img 
    partprobe /dev/nbd1
    mount /dev/nbd1 /mnt/imagen

Pero en todos los casos obtenemos un error:

    mount: debe especificar el tipo de sistema de archivos.

Para arreglar este error y funcione todo correctamante, tenemos que convertir cada fichero en un "dispositivo loop" con "losetup", formatearlo con "gparted" que ya lo teniamos isntalado de un ejercicio anterior. Cuando ya lo tengamos formateado, ya podemos montar el dispositivo con:

    losetup -v -f imagen-vmdk.vmdk
    mkfs.ext4 /dev/loop1
    mount /dev/loop2 /mnt/images

Para ver el resultado de como quedaría todo, simplemente ponemos el siguiente comando:

    df -h

* [+]Ejercicio 4
 - A) Crear uno o varios sistema de ficheros en bucle usando un formato que no sea habitual (xfs o btrfs) y comparar las prestaciones de entrada/salida entre sí y entre ellos y el sistema de ficheros en el que se encuentra, para comprobar el overhead que se añade mediante este sistema.

Vamos a hacer algo parecido al ejercicio anterior, que es crear dos sistemas de ficheros, pero ene este caso serán:

    xfs
    btrfs

Para ello ejecutamos los siguientes comandos:

    qemu-img create -f raw prueba-xfs.img 50M
    qemu-img create -f raw prueba-btrfs.img 50M

Ahora como en el ejercicio anterior, usamos el comando "losetup" para convertir cada fichero en ficheros "loop":

    losetup -v -f prueba-xfs.img
    losetup -v -f prueba-btrfs.img

El siguiente paso es instalar "xfs" y "btrfs", en caso de que no los tengamos instalados:

    apt-get install xfs xfsprogs
    apt-get install btrfs-tools

Ahora es el momento de darle formato a cada uno:

    mkfs.xfs /dev/loop2
    mkfs.btrfs /dev/loop3

Y el paso final si todo ha salid bien es, montarlos, simplemente con los siguiente comandos:

    mount /dev/loop2 /mnt/loop2
    mount /dev/loop3 /mnt/loop3

Se comprueba de que se ha realizado todo correctamente con:

    df -h
