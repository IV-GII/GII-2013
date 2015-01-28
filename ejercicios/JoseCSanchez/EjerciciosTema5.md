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