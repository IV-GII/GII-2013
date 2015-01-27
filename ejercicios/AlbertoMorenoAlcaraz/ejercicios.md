
Tema 4
======

Ejercicio 1
-----------

**Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.**

Instalamos el paquete lxc en fedora con el siguiente comando:
```bash
sudo yum install lxc
```

Una vez instalado, comprobamos que se ha realizado correctamente:
```bash
lxc-checkconfig
```

![t4ej1.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej1.png)


Ejercicio 2
-----------

**Comprobar qué interfaces puente se han creado y explicarlos.**

Para la creación de un contenedor, necesitamos instalar algunos paquetes. Hay que introducir los siguientes comandos:
```bash
sudo yum install lxc-templates
sudo yum install debootstrap
```

Para iniciar contenedores, hay que tener instaladas algunas librerias, que se pueden instalar ejecutando en nuestra consola:
```bash
sudo yum install libvirt-daemon-lxc libvirt-daemon-config-network
sudo systemctl start libvirtd.service
sudo systemctl enable libvirtd.service
```

Una vez que tenemos instaladas todas las dependencias, pasamos a crear una contenedor con el siguiente comando:
```bash
sudo lxc-create -t fedora -n container
```
![t4ej2.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej2.png)

Cuando se ha terminado de crear el contenedor, podemos iniciarlo:
```bash
sudo lxc-start -n una-caja
```

Una vez iniciado el contenedor, ejecutamos `ipconfig -a` y vemos que se han creado las siguientes interfaces:
- lxcbr0
- vethPAXMMJ
Por lo que podemos decir que el contenedor tiene acceso a la red.

![t4ej2b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej2b.png)


Ejercicio 3
-----------

**1. Crear y ejecutar un contenedor basado en Debian.**

Creamos un contenedor con una distribucion debian y lo ejecutamos:
```bash
sudo lxc-create -t debian -n debian
sudo lxc-start -n debian
```
![t4ej3.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej3.png)

**Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.**

Creamos un contenedor con una distribucion centos y lo ejecutamos:
```bash
sudo lxc-create -t centos -n centos
sudo lxc-start -n centos
```
![t4ej3b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej3b.png)


Ejercicio 4
-----------

**1. Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.**

Para instalar lxc-webpanel hay que introducir el comando:
```bash
wget http://lxc-webpanel.github.com/tools/install.sh -O - | bash
```
que hemos recogido de la [documentacion](http://lxc-webpanel.github.io/install.html) oficial.


Una vez instalado, accedemos a traves del navegador a la direccion http://localhost:5000 siendo admin el usuario y contraseña.
Esta pagina nos mostrara las maquinas que tenemos instaladas.

**2. Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.**

Desde la pagina anterior, haciendo clic en el nombre de la maquina, se accede a las opciones de cada una de ellas, en el que se pueden restringir los recursos.


Ejercicio 6
-----------

**Instalar juju.**

Añadimos el repositorio de juju y lo instalamos con los siguientes comandos:
```bash
sudo add-apt-repository ppa:juju/stable
sudo apt-get update && sudo apt-get install juju-core
```

![t4ej6.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej6.png)

**Usándolo, instalar MySQL en un táper.**

Para iniciar juju:
```bash
juju init
```

Para poder usar juju en local, hay que modificar el archivo de configuracion para cambiar el parametro #defaul a local.

Necesitamos tener instalado mongodb-server para usar juju en nuestro equipo, segun indica el temario.
Lo instalamos:
```bash
sudo apt-get install mongodb-server
```

Ahora le indicamos que vamos a trabajar en nuestro equipo local:
```bash
sudo juju switch local
```

Despues, ejecutamos el comando:
```bash
juju bootstrap
```

Una vez terminado, instalamos mysql usando juju:
```bash
sudo juju deploy mysql
```

Una vez instalado, comprobamos que se ha realizado correctamente viendo el estado de juju:
```bash
sudo juju status
```
![t4ej6b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej6b.png)

Vemos que el servicio mysql se ha instalado.


Ejercicio 7
-----------

**1. Destruir toda la configuración creada anteriormente**

Primero, eliminamos mysql:
```bash
sudo juju destroy-unit mysql/0
```

Despues, eliminamos el taper que habia:
```bash
sudo juju destroy-machine 1
```

**2. Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos**

Cambiamos para que juju se ejecute en local.
```bash
sudo juju switch local
```

Añadimos una maquina.
```bash
sudo juju add-machine
```

Añadimos mediawiki
```bash
sudo juju deploy mediawiki 
```
Creamos una relacion entre ellos. Por ejemplo: 
```bash
sudo juju add-relation mediawiki:db mysql 
```
Finalmente, exponemos mediawiki
```bash
sudo juju expose mediawiki
```

**3. Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.**

```bash
sudo juju switch local

juju bootstrap

sudo juju deploy mediawiki 

sudo juju add-relation mediawiki:db mysql 

sudo juju expose mediawiki
```


Ejercicio 8
-----------

**Instalar libvirt. Te puede ayudar esta guía para Ubuntu.**

Instalamos en fedora, ejecutando el comando:
```bash
sudo yum install libvirt
```

![t4ej8.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej8.png)


Ejercicio 10
------------

**Instalar docker.**

Para la instalacion de docker, he mirado el manual de [docker](https://docs.docker.com/installation/fedora/).
Introducimos los siguiente comandos

```bash
sudo yum install docker-io
sudo systemctl start docker
sudo systemctl enable docker
```

![t4ej10.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej10.png)


Ejercicio 11
------------

**1. Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.**


Instalamos un contenedor con ubuntu:
```bash
sudo docker pull ubuntu
```
![t4ej11.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej11.png)

Instalamos un contenedor con centos:
```bash
sudo docker pull centOS
```
![t4ej11b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej11b.png)

**2. Buscar e instalar una imagen que incluya MongoDB.**

Buscamos una imagen para docker que incluya MongoDB, y encontramos un paquete que lo contiene. Usamos este repositorio para instalar docker con esta imagen ejecutando el siguiente comando:
```bash
sudo docker pull dockerfile/mongodb
```
![t4ej11c.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej11c.png)


Ejercicio 12
------------

**Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.**

Ejecutamos el contenedor ubuntu
```bash
sudo docker run -i -t ubuntu /bin/bash
```

Añadimos un usuario nuevo y lo hacemos sudo
```bash
useradd -d /home/nginx -m alberto
passwd alberto
adduser alberto sudo
```

Hacemos login con el usuario creado
```bash
login alberto
```

![t4ej12.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej12.png)

Despues de añadir el usuario y entrar con el, instalamos nginx con el siguiente comando:
```bash
sudo apt-get install nginx
```

Ejercicio 13
------------

**Crear a partir del contenedor anterior una imagen persistente con commit.**


Necesitamos el id del contenedor que tenemos encendido, por lo que lo miramos con el comando:
```bash
sudo docker ps --no-trunc
```
![t4ej13.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej13.png)

Despues, hacemos el commit con el id obtenido.
```bash
sudo docker commit dd93c54d2a269e0161da2b78097f65c058afdbdda03f58ba2b80abdc6f8cc427 contenedor
```
Compruebo si se a creado la imagen de docker con:
```bash
sudo docker images 
```
![t4ej13b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t4ej13b.png)


Ejercicio 14
------------

Para crear una imagen, voy a utilizar un dockerfile del proyecto Virtual Vulcano, sobre el sistema coreOS.


El fichero dockerfile es:
```yaml
# Copyright (c) 2014 The Virtual Vulcano authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that
# can be found in the LICENSE.md file.

FROM dockerfile/nodejs-bower-gulp
MAINTAINER Virtual Vulcano <virtualvulcano@gmail.com>

RUN apt-get update

# Intalar mongoDB
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
   echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list && \
   apt-get update && \
   apt-get install -y mongodb-10gen
RUN mkdir -p /data/db

ADD . /web

WORKDIR /web
CMD /web/cmd/startup.sh
```

El dockerfile indica que el contenedor se va a actualizar, va a instalarse con una imagen con nodejs, bower y gulp, instalará mongoDB, añadirá como directorio de trabajo una carpeta llamada web e iniciará el script startup.sh nada más iniciarse el contenedor.


Tema 5
======


Ejercicio 1
-----------

**1. ¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?**

Podemos encontrar las siguientes particiones en el disco duro:
![t5ej1.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t5ej1.png)

- Una partición para el sistema.
- Una partición para Windows.
- Una partición para Fedora(Linux).

Dentro de la partición de Fedora, hay 3 volúmenes:
- Swap
- Home
- Root


Ejercicio 2
-----------

**Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.**

Antes de empezar, necesitamos tener instalado el paquete sshfs.
Para ello, ejecutamos en la maquina virtual ubuntu, el comando:
```bash
sudo apt-get install sshfs
```

Y en la maquina anfitriona fedora, este comando:
```bash
sudo yum install sshfs
```

Una vez instalado, añadimos en la maquina virtual el usuario con el que nos vamos a conectar al grupo de usuarios fuse. En este caso, usaremos el comando:
```bash
sudo usermod -a -G fuse alberto
```

Despues, en la maquina anfitriona, se crea la carpeta que se quiere sincronizar con la maquina virtual, por ejemplo la carpeta iv. 

Una vez creada, pasamos a sincronizarla usando sshfs, introduciendo el siguiente comando:
```bash
sshfs ubuntu@192.168.56.101:/home /home/alberto/Universidad/IV/iv -p 30520
```

En la siguiente captura, podemos ver como se ha creado la carpeta correspondiente:
![t5ej2.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t5ej2.png)


Ejercicio 3
-----------

**Crear imágenes con estos formatos (y otros que se encuentren tales como VMDK) y manipularlas a base de montarlas o con cualquier otra utilidad que se encuentre**


Primero, instalamos el paquete qemu, que es el que vamos a utilizar:
```bash
sudo apt-get install qemu-system
```

Ahora, creamos algunas imagenes con distintos formatos, como qcow2 y raw, introduciendo los siguientes comandos:
```bash
# qcow2
qemu-img create -f qcow2 img-cow.qcow2 5M

# raw
qemu-img create -f raw img-raw.raw 5M
```
![t5ej3.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t5ej3.png)

Ahora, ponemos una imagen en bucle y le damos formato, usando los siguiente comandos:
```bash
sudo losetup -v -f img-cow.qcow2
sudo mkfs.ext4 /dev/loop0
```
![t5ej3b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t5ej3b.png)


Ejercicio 4
-----------

**Crear uno o varios sistema de ficheros en bucle usando un formato que no sea habitual (xfs o btrfs) y comparar las prestaciones de entrada/salida entre sí y entre ellos y el sistema de ficheros en el que se encuentra, para comprobar el overhead que se añade mediante este sistema**

Para empezar, creamos dos imagenes con qemu para realizar las pruebas y las ponemos en bucle:
```bash
qemu-img create -f raw img1.raw 50M
qemu-img create -f raw img2.raw 50M

sudo losetup -v -f img1.raw
sudo losetup -v -f img2.raw
```

Despues se les da formato a las imagenes y las montamos:
```bash
sudo mkfs.xfs -f /dev/loop1
sudo mkfs.btrfs -f /dev/loop2

sudo mkdir /mnt/loop1
sudo mkdir /mnt/loop2

sudo mount /dev/loop1 /mnt/loop1
sudo mount /dev/loop2 /mnt/loop2
```

Creamos el fichero:

```bash
sudo dd if=/dev/zero of=/home/ubuntu/40M bs=1MB count=40
```
Despues, copiamos el fichero para ver el tiempo:
```bash
sudo time -v cp 40M /mnt/loop2/40M
sudo time -v cp 40M /mnt/loop3/40M
```

Se puede comprobar que xfs es un poco mas rapido que btrfs.


Ejercicio 5
-----------

**Instalar ceph en tu sistema operativo.**

Para instalar ceph, tan solo hay que ejecutar el comando:

```bash
sudo apt-get install ceph-mds
```


Ejercicio 6
-----------

**Crear un dispositivo ceph usando BTRFS o XFS**

Primero, instalamos los paquetes que vamos a necesitar:
```bash
sudo apt-get install ceph-mds
```

Despues, creamos los directorios que necesitamos y el fichero de configuración:
```bash
mkdir -p /srv/ceph/{osd,mon,mds}

sudo nano /etc/ceph/ceph.conf
```

En el fichero de configuracion introducimos lo siguiente:
```bash
[global]
log file = /var/log/ceph/$name.log
pid file = /var/run/ceph/$name.pid
[mon]
mon data = /srv/ceph/mon/$name
[mon.mio]
host = santiago-PC
mon addr = 127.0.0.1:6985
[mds]
[mds.mio]
host = santiago-PC
[osd]
osd data = /srv/ceph/osd/$name
osd journal = /srv/ceph/osd/$name/journal
osd journal size = 1000 ; journal size, in megabytes
[osd.0]
host = santiago-PC
devs = /dev/loop0
```

Creamos la imagen:
```bash
qemu-img create -f raw img.raw 200M
sudo losetup -v -f img.raw
sudo mkfs.xfs /dev/loop3
```

Despues, creamos el directorio para el sistema de objetos:
```bash
 sudo mkdir /srv/ceph/osd/osd.0
 sudo /sbin/mkcephfs -a -c /etc/ceph/ceph.conf 
 ```

![t5ej6.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t5ej6.png)

Iniciamos el servicio:
```bash
sudo /etc/init.d/ceph -a start
```

Vemos el resultado:
```bash
sudo ceph -s
```
![t5ej6b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t5ej6b.png)

Finalmente, montamos:
```bash
sudo mkdir /mnt/ceph
sudo mount -t ceph ubuntu:/ /mnt/ceph
```


Ejercicio 7
-----------

**Almacenar objetos y ver la forma de almacenar directorios completos usando ceph y rados.**

Para este ejercicio, vamos a usar rados para almacer objetos y directorios.

Primero hay que crear pool, introduciendo el comando:
```bash
sudo rados mkpool pool
```

Y añadimos el fichero:
```bash
sudo rados put -p pool obj alberto
```


Ejercicio 8
-----------

**Tras crear la cuenta de Azure, instalar las herramientas de línea de órdenes (Command line interface, cli) del mismo y configurarlas con la cuenta Azure correspondiente.**

Una vez tenemos una cuenta de Azure, en mi caso, una cuenta creada para el proyecto Virtual Vulcano, seguimos la [documentación](http://azure.microsoft.com/en-us/documentation/articles/xplat-cli/) de la pagina oficial de Azure.

Primero, instalamos azure-cli con npm:

```bash
sudo npm install azure-cli -g
```

Descargamos el fichero de configuracion de la cuenta con el siguiente comando:
```bash
azure account download
```

Una vez descargado, usamos este fichero para importar la configuracion
```bash
azure account import "fichero"
```

![t5ej8.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t5ej8.png)
