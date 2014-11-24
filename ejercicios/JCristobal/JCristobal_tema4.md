#Ejercicios de JCristobal (José Cristóbal López Zafra)

# Tema 4

[Enlace al tema](http://jj.github.io/IV/documentos/temas/Contenedores)


##Ejercicio 1
###Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.

Primero nos descargamos la última versión de Github:
`git clone https://github.com/lxc/lxc`

y en la carpeta de LXC ejecutamos `./autogen.sh && ./configure && make && sudo make install`

Puede dar problemas si no tenemos instalado autoconf, que instalamos con `sudo apt-get install autoconf`

Por último comprobamos si está preparado para usar este tipo de tecnología y también si se ha configurado correctamente con `lxc-checkconfig`
		
![imagen](http://i.imgur.com/HRgX8yc.png)

También se podría instalar simplemente con `sudo apt-get install lxc`, aunque con el método anterior nos aseguramos que instalamos la última versión.


##Ejercicio 2
###Comprobar qué interfaces puente se han creado y explicarlos.

La instalación anterior no me deja crear un contenedor e instalar ubuntu dentro, me da el siguiente error

"lxc-create: error while loading shared libraries: liblxc.so.1: cannot open shared object file: No such file or directory"

Lo soluciono gracias al [enlace que me proporciona el profesor](https://lists.linuxcontainers.org/pipermail/lxc-users/2014-January/006069.html)


Creo el contenedor con `sudo lxc-create -t ubuntu -n una-caja` y para arrancarlo `sudo lxc-start -n una-caja`


> Falla al arrancar, [aquí capturas al intentar arrancarlo, y al internar arrancarlo en foreground](http://i.imgur.com/ymzHosW.png)
> 
> Vemos que el fallo puede ser de permisos con CGROUP.
> 


Vemos el estado de los contenedores con `sudo lxc-list`

Debería creararse un puente llamado lxcbr0 y otro con el prefijo veth



