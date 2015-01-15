###Ejercicio 1 ###
Para instalar la ultima version
$ sudo apt-get update
$ sudo apt-get install lxc
Para comprobar que está correctamente instalado:
$ lxc-checkconfig
![captura](http://s25.postimg.org/p2ahyvxz3/1_1.png)

###Ejercicio 2 ###
He creado una caja con ubuntu:
![captura](http://s25.postimg.org/cjtwib0zj/2_1.png)
Y he comprobado las interfaces que tiene con 
$ ifconfig
![captura](http://s25.postimg.org/a520xvkqn/2_2.png)
Por lo que vemos que la interfaz que se ha creado son lxcbr0 y vethFCVNLU.

###Ejercicio 3 ###

He instalado un contenedor en debian con:
$ sudo lxc-create -t debian contenedor-debian
![captura](http://s25.postimg.org/67er8gxxb/3_1.png)

###Ejercicio 4 ###
He usado el instalador automático, para ello he tenido que ser root:
$ sudo su
$ wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash
Me he metido en el servidor local:
![captura](http://s14.postimg.org/ewtsmzmrl/4_1.png)
Y desde aqui puedo controlar todos mis contenedores
![captura](http://s14.postimg.org/j8iebztoh/4_2.png)
He jugado un poco con ellos para restringuirles los recursos:
![captura](http://s14.postimg.org/qn7q4dfk1/4_3.png)

###Ejercicio 6 ###

Para instalarlo solo he tenido que seguir las instrucciones del guión:

$ sudo add-apt-repository ppa:juju/stable
$ sudo apt-get update && sudo apt-get install juju-core

He cambio del default a local en ./juju//environments.yaml
Al intentar hacer:
$ juju bootstrap 

La salida ha sido:
ERROR there was an issue examining the environment: failed verification of local provider prerequisites: 
juju-local must be installed to enable the local provider:

Asi que he instalado juju-local
$ sudo apt-get install juju-local

Después no he tenido problema al hacer:
$ juju bootstrap 

Y he obtenido como salida:
uploading tools for series [precise trusty]
[sudo] password for haricarreras: 
Logging to /home/haricarreras/.juju/local/cloud-init-output.log on remote host
Bootstrapping Juju machine agent
Starting Juju machine agent (juju-agent-haricarreras-local)

Por último he deployado con mysql:
$juju deploy mysql
![captura](http://s25.postimg.org/g37m6wzb3/6_1.png)


###Ejercicio 7 ###

Destruirlo ha sido sencillo.
He usado los dos comandos
$ juju destroy-service mysql

Que no ha dado ninguna salida

$ sudo juju destroy-environment local
Que ha pedido confirmación debido al peligro de la acción.
WARNING! this command will destroy the "local" environment (type: local)
This includes all machines, services, data and other resources.

Para volver ha crear lo anterior he tenido que repetir los pasos pero sin ninguna instalación requerida.

$ juju bootstrap 
$ juju deploy mysql
$ juju deploy mediawiki
$ juju add-relation mediawiki mysql

Por último he creado un script para crear la configuración anterior:

!/bin/bash
juju init
juju switch local
juju bootstrap
juju deploy mysql
juju deploy mediawiki
juju add-relation mediawiki mysql

###Ejercicio 8 ###

Instalarlo ha sido tan sencillo como usar el comando:

$ sudo apt-get install kvm libvirt-bin

Tras instalarlo he comprobado que puedo ejecutar virsh:
![captura](http://s25.postimg.org/5uf513b9b/Screen_Shot_2015_01_03_at_16_41_58.png)

###Ejercicio 9 ###

Primero he instalado el virt-viewer:

$ sudo apt-get install virt-viewer

Al intentar hacer:

$ virt-install --help 

Me ha pedido que instale virtinst:
The program 'virt-install' is currently not installed. You can install it by typing:
sudo apt-get install virtinst

Siguiendo las instrucciones de: http://virt-tools.org/learning/install-with-command-line/ vemos que necesitamos primero descargar una imagen de la maquina virtual, en mi caso Fedora14.
Primero tengo que crear el espacio, en este caso le daré un máximo de 4GB
$ fallocate -l 4096M /var/lib/libvirt/images/guest.img

Después puedo instarlo con:
$ virt-install -r 1024 --accelerate -n Fedora14 -f /var/lib/libvirt/images/guest.img /home/haricarreras/Downloads/Fedora-14-x86_64-Live.iso

###Ejercicio 10 ###

La documentación de docker es muy completa (al menos por lo que he visto). Para instalar docker en ubuntu tenemos un manual que se puede seguir paso a paso: http://docs.docker.com/installation/ubuntulinux/#ubuntu-trusty-1404-lts-64-bit

$ sudo apt-get install docker.io

Después hay que reiniciar el bash, para ello basta con cerrar la terminar y volverla a abrir.
Luego lo inicio para comprobar que funciona:
![captura](http://s25.postimg.org/n8zd9d8e7/Screen_Shot_2015_01_03_at_17_05_30.png)
Aunque lo suyo es iniciarlo como un servicio añadiendo & al final.

###Ejercicio 11 ###

Es tan sencillo como descargarse ubuntu:

$ sudo docker pull ubuntu

lo mismo con centOS:

$ sudo docker pull centos

Para mongodb hay una imagen https://registry.hub.docker.com/u/dockerfile/mongodb/

$ sudo docker mongodb

![captura](http://s25.postimg.org/6mht0afgf/Screen_Shot_2015_01_03_at_17_15_38.png)
