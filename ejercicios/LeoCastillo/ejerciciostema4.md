#Ejercicio 1#

##Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.##

Para instalar LXC ejecutamos el siguiente comando:

~~~
sudo apt-get install lxc
~~~

Para comprobar que se puede usar este tipo de container ejecutamos:

~~~
lxc-checkconfig
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio1_1.png)


#Ejercicio 2#

##Comprobar qué interfaces puente se han creado y explicarlos.##

Se genera un puente de red preconfigurado:


![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio2_1.png)


#Ejercicio 3#

##1.Crear y ejecutar un contenedor basado en Debian.##

Creamos un contenedor en debian, para ello ejecutamos el siguiente comando: 

~~~
sudo lxc-create -t debian -n una-caja
~~~

Comprobamos que el contenedor se ha creado:

~~~
sudo lxc-ls
~~~

##2.Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.##

Creamos el contenedor con el siguiente comando: 

~~~
sudo lxc-create -t fedora -n cont-fedora
~~~

Lo iniciamos:

~~~
sudo lxc-start -n cont-fedora
~~~


![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio3_2.png)


#Ejercicio 4#
##1. Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.##

Para instalar lxc-webpanel utilizamos el siguiente comando:

~~~
wget http://lxc-webpanel.github.io/tools/install.sh -O - | sudo bash
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio4_1.png)

Una vez instalado accedemos a través del navegador poniendo la dirección localhost:5000/login 

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio4_2.png)

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio4_3.png)

##2. Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.##

Le damos al contenedor y nos aparecen los recursos que podemos restringir:

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio4_4.png)

#Ejercicio 5#
##1. Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.##

Voy a comparar un contenedor ubuntu instalado anteriormente con una jaula creada en el tema anterior. Para ello voy a utilizar *Apache Benchmark*

Ejecutamos el siguiente comando en la jaula y en el contenedor:

~~~
sudo apt-get install apache2-utils
~~~

Ahora en la jaula ejecutamos el comando:

~~~
ab -n 1000 -c 25 http://127.0.0.1/
~~~

Y vemos los resultados.

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio5_1.png)

Ahora hacemos lo mismo en el contenedor:

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio5_2.png)


#Ejercicio 6#
##1.Instalar juju.##

Para instalar *juju* en Ubuntu 14.04 ejecutamos lo siguiente:
~~~
sudo apt-get install 
~~~


##2.Usándolo, instalar MySQL en un táper.##

Una vez instalado *juju* para empezar a trabajar con él, escribimos:

~~~
sudo juju init
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio6_1.png)

Esta orden escribe en el subdirectorio ~/.juju, que también crea, el fichero environments.yaml, que contiene información sobre los entornos con los que suele trabajar: proveedores de servicios de nube y el local, que es el que vamos a probar. Por omisión, el fichero trabajará con Amazon EC2. Tenemos que cambiarlo a local si queremos trabajar con contenedores LXC editando el fichero y cambiando la línea

Para ello comentamos la linea:
~~~
#default: amazon
~~~

y añadimos la nueva linea:
~~~
default: local
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio6_2.png)


Lo siguiente que vamos hacemos es cambiar el entorno de trabajo local, usando el siguiente comando: 
~~~
sudo juju switch local
~~~

Para trabajar en local instalamos MongoDB:

~~~
sudo apt-get install mongodb-server
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio6_3.png)


Creamos el táper, usando el siguiente comando: 

~~~
sudo juju bootstrap
~~~

Para instalar MySQL ejecutamos:
~~~
juju deploy mysql
~~~

#Ejercicio 7#
##Destruir toda la configuración creada anteriormente##

Para desmontar los servicios se tiene que hacer en orden inverso a su creación: primero hay que destruir las unidades, de esta forma:

~~~
sudo juju destroy-unit mysql/0
~~~

Para la destrucción de las máquina ejecutamos:

~~~
sudo juju destroy-machine 1
~~~

##Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.##

Para crear la máquina anteriro seguimos los siguientes pasos:

* sudo juju add-machine
* sudo juju deploy mediawiki
* sudo juju add-relation mediawiki:db mysql


##Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.##
~~~
!/bin/bash

juju init
juju switch local
juju bootstrap
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki:db mysql
~~~


#Ejercicio 8#
##Instalar libvirt. Te puede ayudar esta guía para Ubuntu.##

Para instalar libvirt, usamos el siguiente comando: 

~~~
sudo apt-get install kvm libvirt-bin
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio8_1.png)


#Ejercicio 9#
##Instalar un contenedor usando virt-install.##

#Ejercicio 10#
##Instalar docker.##

Para instalar docker en ubuntu he seguido el siguiente enlace <http://docs.docker.com/installation/ubuntulinux/>

Ejecutamos el siguiente comando:
~~~
sudo apt-get install docker.io
~~~

Para comprobar que funciona correctamente ejecutamos:

~~~
sudo docker run -i -t ubuntu /bin/bash
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio10_1.png)

#Ejercicio 11#
##1.Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.##
Para instalar a partir de docker una imagen *CentOS* ejecutamos:
~~~
sudo docker pull centos
~~~
![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio11_1.png)

##2.Buscar e instalar una imagen que incluya MongoDB.##

Para instalar una imagen que incluya *mongodb* ejecutamos:
~~~
sudo docker pull dockerfile/mongodb
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio11_2.png)

#Ejercicio 12#
##Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.##

* Entramos en el contenedor, usando el siguiente comando: 
~~~
sudo docker run -i -t ubuntu /bin/bash
~~~

* Añadimos el nuevo usuario y contraseña:
~~~
useradd -d /home/usuario -m usuario
~~~
~~~
passwd usuario
~~~

* Añadimos el usuario al grupo sudo:
~~~
adduser usuario sudo
~~~

* Nos logeamos:
~~~
login usuario
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio12_1.png)

* Instalamos nginx:
~~~
sudo apt-get install nginx
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio12_2.png)

* Iniciamos nginx:
~~~
sudo service nginx start
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio12_3.png)


#Ejercicio 13#
##Crear a partir del contenedor anterior una imagen persistente con commit.##

Buscamos el identificador del contenedor anterior, para ello podemos ejecutar el siguiente comando:
~~~
sudo docker ps -a=false
~~~

Creamos la imagen persistente en nuestro contenedor, para ello usamos el siguiente comando: 
~~~
sudo docker commit 657c49725cd8 ejercicio13-img
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio13_1.png)



