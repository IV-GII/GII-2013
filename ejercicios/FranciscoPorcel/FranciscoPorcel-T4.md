# Tema 4

## Ejercicio 1

#### Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.

Hay que realizar la instalación desde el repositorio:

![Ejercicio 1_1](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/1_1.png)

Una vez hecho esto, será necesario comprobar si nuestra máquina es compatible utilizando el comando lxc-checkconfig

![Ejercicio 1_2](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/1_2.png)

## Ejercicio 2

#### Comprobar qué interfaces puente se han creado y explicarlos.

Tras ejecutar ipconfig -a vemos que se ha creado el interfaz lxcbr0:

![Ejercicio 2_1](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/2_1.png)

Con el comando "brctl show" veriamos que también está y el contenedor tiene acceso a la red.

![Ejercicio 2_2](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/2_2.png)

## Ejercicio 3

#### Crear y ejecutar un contenedor basado en Debian. Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.

Podemos crearlos con:

* sudo lxc-create -t debian -n minube_debian
* sudo lxc-start -n minube_debian

Y obtenemos:

![Ejercicio 3_1](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/3_1.png)

## Ejercicio 4

#### Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.

Lo instalamos con: wget http://lxc-webpanel.github.io/tools/install.sh -O - | sudo bash

![Ejercicio 4_1](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/4_1.png)

Después accedemos a http://localhost:5000 :

![Ejercicio 4_2](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/4_2.png)

#### Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.

Todo esto podemos hacerlo en la siguiente pestaña:

![Ejercicio 4_3](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/4_3.png)

## Ejercicio 6

#### Instalar juju.

Para instalarlo ejecutamos:

* sudo add-apt-repository ppa:juju/stable
* sudo apt-get update
* sudo apt-get install juju-core

![Ejercicio 6_1](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/6_1.png)

## Ejercicio 7

#### Destruir toda la configuración creada anteriormente

Ejecutamos:

* juju destroy-service mysql
* juju destroy-service mediawiki
* sudo juju destroy-environment local

#### Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.

La creamos mediante las órdenes:

* juju bootstrap
* juju deploy mediawiki
* juju deploy mysql
* juju add-relation mediawiki:db mysql
* juju expose mediawiki

## Ejercicio 8

#### Instalar libvirt. Te puede ayudar esta guía para Ubuntu. 

Ejecutamos:

![Ejercicio 8_1](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/8_1.png)

Una vez hecho esto, comprobamos ejecutando virsh, que todo está correcto.

![Ejercicio 8_2](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/8_2.png)

## Ejercicio 9

#### Instalar un contenedor usando virt-install.

## Ejercicio 10

#### Instalar docker.

Hacemos "sudo apt-get install docker.io":

![Ejercicio 10_1](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/10_1.png)

Para comprobar que se ha instalado correctamente, comprobamos la versión instalada con "docker -v":

![Ejercicio 10_2](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/10_2.png)

## Ejercicio 11

#### Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS. Buscar e instalar una imagen que incluya MongoDB.

Instalamos la imagen de ubuntu ("sudo docker pull ubuntu"):

![Ejercicio 11_1](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/11_1.png)

Instalamos la imagen de CentOS ("sudo docker pull centos"):

![Ejercicio 11_2](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/11_2.png)

Por último instalamos una imagen que incluya MongoDB ("docker pull dockerfile/mongodb")

![Ejercicio 11_3](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/11_3.png)

## Ejercicio 12

#### Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.

En primer lugar, entramos en el contenedor: 
* sudo docker run -i -t ubuntu /bin/bash

Ahora añadimos el usuario y la contraseña:
* useradd -d /home/userprueba -m userprueba
* passwd passprueba 
* adduser userprueba sudo

![Ejercicio 12_1](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/12_1.png)

Nos logueamos con el usuario creado:
* su userprueba

Instalamos nginx:
* sudo apt-get install nginx

![Ejercicio 12_2](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema4/12_2.png)


## Ejercicio 13

#### Crear a partir del contenedor anterior una imagen persistente con commit. 

En primer lugar comprobamos el ID del docker con "sudo docker ps".

Lo anotamos y ejecutamos:

* sudo docker commit 6c1e30d23a0d nombrecommit

## Ejercicio 14

#### Crear una imagen con las herramientas necesarias para el proyecto de la asignatura sobre un sistema operativo de tu elección. 


