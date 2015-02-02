Alfonso Capilla Calvet

#Tema 4

##Ejercicio 1
###Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.

Primero lo descargamos  de Github: git clone https://github.com/lxc/lxc

Instalamos autoconf para no tener problemas
`sudo apt-get install autoconf`

y dentro de la carpeta ejecutamos:
`./autogen.sh && ./configure && make && sudo make install`

Comprobamos qu todo funciona correctamente con
`lxc-checkconfig`

![lxc](http://i.imgur.com/yXYWVFG.png)

##Ejercicio 2
###Comprobar qué interfaces puente se han creado y explicarlos.
Como ya me comentaron mis compañeros da error, por lo que sigo las [https://lists.linuxcontainers.org/pipermail/lxc-users/2014-January/006069.html](instrucciones indicadas por el profesor)

Cremos el contendor con:
`sudo lxc-create -t ubuntu -n una-caja`

Y lo arrancamos con:
`sudo lxc-start -n una-caja`

(TERMINARLO

##Ejercicio 3
###
