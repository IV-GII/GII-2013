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
