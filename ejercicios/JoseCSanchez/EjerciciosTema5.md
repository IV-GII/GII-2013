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

y en la segunda máquina instalo el servidor ssh:

`sudo apt-get install openssh-server`