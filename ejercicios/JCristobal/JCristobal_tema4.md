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
> Vemos que el fallo es un conflicto de permisos con CGROUP.
> 


Vuelvo a internarlo sobre un sistema Debian, monto cgroup, [instalo LXC](https://wiki.debian.org/LXC#Installation) y creo el contenedor siguiendo los mismo pasos que he comentado antes

[Contenedor recién creado](http://i.imgur.com/HvOMhV8.png) y lo arrancamos: ![arrancado](http://i.imgur.com/dhErc2R.png)


Con `sudo lxc-list` podemos ver el estado de los contenedores, paro el contenedor y lo ejecuto: [Estado de los contenedores](http://i.imgur.com/YwcvSSL.png)


Dentro del contenedor ejecutamos `ifconfig -a` para ver sus interfaces de red:

![imagen](http://i.imgur.com/SDVwA8Z.png)


Y fuera, con `brctl show` y el contenedor parado (`lxc-stop -n una-caja`) vemos que no tiene ninguna interfaz, aunque según los apuntes deberíamos haber encontrado lxcbr0 y veth.

Creo y asigno una nueva interfaz a la red cableada:

![imagen](http://i.imgur.com/mflfRii.png)




##Ejercicio 3
###Crear y ejecutar un contenedor basado en Debian.

Muestro los pantallazos de la actividad anterior, ya que instalo Debian, con el contenedor recién creado:

![Contenedor_recién_creado](http://i.imgur.com/HvOMhV8.png) y [arrancado](http://i.imgur.com/dhErc2R.png)


###Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. 


Usamos [el script](https://raw.githubusercontent.com/globalcitizen/lxc-gentoo/master/lxc-gentoo) del [comentario del issue de Óscar Zafra](https://github.com/IV-GII/GII-2013/issues/87#issuecomment-28639976): nos lo descargamos y lo metememos en /usr/share/lxc/templates/:

`sudo wget -P /usr/share/lxc/templates/ https://raw.github.com/globalcitizen/lxc-gentoo/master/lxc-gentoo`

y le damos permisos `chmod +x /usr/share/lxc/templates/lxc-gentoo`

Y creamos el contenedor: `/usr/share/lxc/templates/lxc-gentoo create`

![descargado_permisos_crear](http://i.imgur.com/wnOqH80.png)


Lo ejecutamos y lo arracancamos con el nombre que le hemos dado `lxc-start -f gentoo.conf -n gentoo`


Crearemos también otro contenedor con [Progress](https://www.progress.com/):

ejecuto `lxc-create -t progress -n pro` para crear  contenedorlo:

![imagen](http://i.imgur.com/iKYY7Xj.png)

y lo ejecuto con `lxc-start -n pro`
 



