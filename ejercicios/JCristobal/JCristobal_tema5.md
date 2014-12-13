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




