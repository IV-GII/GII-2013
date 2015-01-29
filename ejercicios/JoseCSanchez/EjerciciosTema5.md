# Ejercicios tema 5

## Ejercicio 1

En mi ordenador personal en donde estoy realizando los ejercicios de esta asignatura no dispongo de ninguna partición, usando una máquina virtual de ubuntu. 

A continuación muestro el sistema de disco que uso en la máquina virtual ejecutando los siguientes comandos:

`sudo lsblk -fm`

![](http://fotos.subefotos.com/7fe490615db5eef8c6ad5b7e4c56dcbao.png)

`sudo fdisk -l`

![](http://fotos.subefotos.com/dee295129068f36aa202c1c82c295e44o.png)

Para ver los volumenes lógicos, primero instalamos el paquete **sudo apt-get install lvm2**, y luego ejecutamos la orden:

`sudo lvmdiskscan`

![](http://fotos.subefotos.com/779921a29ac7f59bddc5e5f5fee49091o.png)

Como ofertas comerciales, podemos encontrar las siguientes: [Drobo B800i SAN RAID 8 bahías](http://www.macnificos.com/product.aspx?p=7909&gclid=CJ6vyImXucMCFazKtAod10oAsg), [IBM 249824E](http://www.ebay.es/itm/like/391037303855?limghlpsr=true&hlpv=2&ops=true&viphx=1&hlpht=true&lpid=115), entre otras muchas, viendo en general son bastante caras, pero con grandes niveles de eficiencia, sin decir la capacidad de swapping, redundancia, etc de la que disponen.


## Ejercicio 2

Primero, si no tenemos Fuse instalado, lo instalamos en ambas máquinas con las ordenes:

```sh
modprobe fuse
depmod -A
```

Una vez instalado, instalo también en ambas máquinas el **sshfs**,

`sudo apt-get install sshfs`

![](http://fotos.subefotos.com/7d85af6dc1164e6ce9652bd91b10ec1fo.png)

e instalo el servidor ssh:

`sudo apt-get install openssh-server`

Una vez instalado todo, compruebo la dirección ip de la máquina servidora mediante el comando **ifconfig**, y conecto las máquinas con la correspondiente orden.

`Ejemplo: sshf jose@direccionIP:/home/maquina1 /home/maquina2`


## Ejercicio 3

Primero instalo qemu con el siguiente comando:

`sudo apt-get install qemu-system`

Para crear varias imágenes con varios formatos ejecuto las siguientes ordenes:

*qcow2*

`qemu-img create -f qcow2 fichero-cow.qcow2 5M`

*vdi*

`qemu-img create -f vdi fichero-vdi.vdi 5M`

![](http://fotos.subefotos.com/9e58f4dfc91a402a235d9d03b0496366o.png)

Una vez creado, tendremos que convertirlo a un dispositivo loop,

`sudo losetup -v -f fichero-cow.qcow2`

y ahora podemos por ejemplo formatearlo como si fuera un disco duro normal:

`sudo mkfs.ext4 /dev/loop0`

![](http://fotos.subefotos.com/4b7060200cb8ca42a67c7137beff0ef9o.png)


## Ejercicio 4

Primero intalamos los paquetes necesarios con la orden:

`sudo apt-get install btrfs-tools xfsprogs`

A continuación creamos las imagenes:

```sh
sudo qemu-img create -f raw  im1.img 200M
sudo qemu-img create -f raw  im2.img 200M
```

![](http://fotos.subefotos.com/b350d5b13d77f3ce351a7aedc5a9be91o.png)

Seguidamente las ponemos en looping y les damos formato:

```sh
sudo losetup -v -f im1.img
sudo losetup -v -f im2.img
sudo mkfs.xfs /dev/loop2
sudo mkfs.btrfs /dev/loop3
```

Y finalmente las montamos:

```sh
sudo mkdir /mnt/m1
sudo mkdir /mnt/m2
sudo mount -t xfs /dev/loop2 /mnt/m1
sudo mount -t xfs /dev/loop3 /mnt/m2
```

![](http://fotos.subefotos.com/513a7f109d44c67f8434b920a5eba6f0o.png)
![](http://fotos.subefotos.com/29f4fd5b003a151df9c7d5e04e3a85e4o.png)


## Ejercicio 5

Orden de instalación: `sudo apt-get install ceph-mds`


## Ejercicio 6

