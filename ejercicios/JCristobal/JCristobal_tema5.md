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





