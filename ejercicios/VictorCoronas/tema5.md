##TEMA 5

#VIRTUALIZACIÓN

#Clase del 4 de Noviembre de 2014

* [+]Ejercicio 1
 - A) ¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?

Lo primero que hago es instalar "Gparted" con:

    apt-get install gparted

Una vez lo tenemos instalado lo ejecutamos, entonces se nos mostrará todos los volúmenes lógicos instalados en nuestro equipo, así como todas las particiones y que hay, en caso de que se tengan.
En mi caso, solo tengo un disco duro y varias particiones realizadas, que son:

    Mac os x
    Linux
    Windows

Como se puede [ver en la siguiente captura](), cada uno tiene su propio sistema de archivos.

 - B) Si tienes acceso en tu escuela o facultad a un ordenador común para las prácticas, ¿qué almacenamiento físico utiliza?

Si he podido tener acceso a los ordenadores de la escula, en un aula de prácticas. Estos ordenadores usan un sistema de ficheros remoto, que no se encuntra en el ordenador local.


 - C) Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.

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
