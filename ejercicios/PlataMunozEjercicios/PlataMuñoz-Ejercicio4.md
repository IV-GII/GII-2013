##1. Instala LXC en tu versión de Linux favorita. 

![](http://i.imgur.com/hTUtWQl.png)


##2. Comprobar qué interfaces puente se han creado y explicarlos.

Usando la orden:

brctl show

Podemos ver los puentes creados.

##3 Crear y ejecutar un contenedor basado en Debian.

Inicialmente me creo mi contenedor de ubuntu introduciendo en consola lo siguiente: lxc-create -t ubuntu-cloud -n contenedor
Tras ejecutar lxc-start -n contenedor entramos en nuestro sistema.

##4 Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.
##Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.

Instalamos lxc-webpanel introduciendo en consola la siguiente línea de comandos: wget http://lxc-webpanel.github.io/tools/install.sh -O | sudo bash seguidamente, comienza el proceso de instalación.

Una vez instalado, abrimos una pestaña en nuestro navegador e introducimos localhost:5000 para poder usarlo.

##5 Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.

Para hacerlo podemos hacer lo siguiente:


En el contenedor instalamos nginx, después con ab hacemos peticiones concurrentes con el siguiente comando:

ab -n 1000 -c 1000 "ip"

Después de esto, entramos en la jaula y ejecutamos:

ab -n 1000 -c 1000 http://localhost/

De esta forma podremos comprobar las prestaciones de ambos.

##6 Instalar juju y, usándolo, instalar MySQL en un táper.

sudo add-apt-repository ppa:juju/stable

sudo apt-get update

Y luego instalamos juju desde los repositorios:

![](http://i.imgur.com/3UPJQuW.png)

Ahora entramos en:  ~/.juju/environments.yaml y sustituimos en la línea default:amazon por default:local Y ahora hacemos:

`juju switch local`
`juju bootstrap`
`juju deploy mysql`
`juju status`



##7. Destruir toda la configuración creada anteriormente

Para destruirla basta con hacer :

juju destroy-service mysql
juju destroy-environment


##7.1Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.

Tendríamos que hacer:

juju bootstrap
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki:db mysql
juju expose mediawiki


##7.2 Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.

Creamos nuestro script llamado "ejercicio7.sh" y sería algo asi:

#!/bin/bash
juju init
juju switch local 
juju bootstrap 
juju deploy mediawiki
juju deploy mysql 
juju add-relation mediawiki:db mysql 
juju expose mediawiki 
juju status

##8. Instalar libvirt. Te puede ayudar esta guía para Ubuntu.

![](http://i.imgur.com/mdCp0NA.png)

Instalado de la siguiente forma:


 sudo apt-get install kvm libvirt-bin


#9 Instalar un contenedor usando virt-install.

Instalamos virt-install:

sudo apt-get install virtinst

Luego instalamos la imagen con:

sudo virt-install --name ubuntu --ram 512 -- file=/var/lib/libvirt/images/ubuntu-13.04-server-i396.img --file-size=3 --vnc -- cdrom=/var/lib/libvirt/images/ubuntu-13.04-server-i386.iso

Por ultimo instalamos virt-viewer:

sudo apt-get install virt-viewer

##10 Instalar docker

Para instalar docker primero deberemos de actualizar los repositorios:

sudo apt-get update

Luego lo instalaremos con: 


sudo apt-get install docker.io














