
Tema 1
======

Ejercicio 1
-----------

**Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar este artículo en Infoautónomos sobre el tema.**

Para el cálculo del coste de amortizacion de un servidor, he elegido el servidor [Lenovo TS-440 Think Server Intel Xeon V1225 E3/4GB](Lenovo TS-440 Think Server Intel Xeon V1225 E3/4GB)

Su precio inicial es de 811€ (IVA incluido). El precio sin IVA es de 670.25€

######Amortización a 4 años

Para amortizar el precio del servidor, deducimos para cada año un 25%. 
670.25€ * 0.25 = 167.56€

Por lo que la amortizacion cada año sería de 167.56€

######Amortización a 7 años

Para amortizar el precio del servidor, deducimos para cada año un 14.29%. 
670.25€ * 0.1429 = 95.78€

Por lo que la amortizacion cada año sería de 95.78€


Ejercicio 2
-----------

**Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo**

Vamos a comparar dos servidores, para ello se ha elegido [Amazon EC2](http://aws.amazon.com/es/ec2/pricing/) y [Azure](http://azure.microsoft.com/es-es/pricing/calculator/?scenario=virtual-machines).

En el caso de Amazon, elegimos la maquina t2.medium que tiene 2 cores y 4GB de RAM. El precio por la maquina es 0.050 euros por hora.
![t1ej2.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t1ej2.png)

En el caso de Azure, elegimos una maquina Basic A2 con 2 cores y 3.5GB de Ram. El precio por la maquina es 0.066 euros por hora.
![t1ej2b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t1ej2b.png)


**1% del tiempo:**

- Con Amazon: (0.050 €/h * 24h * 30 dias * 12 meses) * 0.01 = 4.32 €/año

- Con Azure: (0.066 €/h * 24h * 30 dias * 12 meses) * 0.01 = 5.70 €/año


**10% del tiempo:**

- Con Amazon: (0.050 €/h * 24h * 30 dias * 12 meses) * 0.1 = 43.2 €/año

- Con Azure: (0.066 €/h * 24h * 30 dias * 12 meses) * 0.1 = 57.02 €/año


Ejercicio 3
-----------

**2. Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.**

Para empaquetar con CDE seguimos el [Manual](http://linuxzone.es/2012/06/04/creando-aplicaciones-portables-en-gnulinux/).

Primero, descargamos el binario. Despues le damos permisos de ejecucion.
Una vez que podemos ejecutarlo, creamos un programa simple, por ejemplo, un hello_world en c++.

Ahora, lo empaquetamos con CDE con el comando:
```bash
./cde_2011-08-15_64bit hello_world
```

Esto nos genera una carpeta en cuyo interior se encuentra el programa empaquetado.
Entramos en dicha carpeta y vemos que hay un ejecutable hello_world.cde.

Si lo ejecutamos, se ejecuta el mismo programa que creamos anteriormente.

Si, por ejemplo, lo comprimimos y nos lo llevamos a otra maquina ubuntu, vemos que podemos ejecutar el programa correctamente.


Ejercicio 4
-----------

**Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.**

He realizado el tutorial de docker.
![t1ej4.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t1ej4.png)

Ejercicio 5
-----------

**Instala el sistema de gestión de fuentes git.**

Para instalarlo, tan solo hay que ejecutar el comando:
```bash
sudo yum install git
```

Ejercicio 6
-----------

**1. Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README.**

Ya tengo varios proyectos creados, por ejemplo usaré MP-PracticaFinal. 

**2. Modificar el readme y subir el fichero modificado.**

Modifico el readme y lo subo al repositorio con los comandos que se ven en la imagen:
![t1ej6.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t1ej6.png)


Ejercicio 7
-----------

**Comprobar si en la instalación hecha se ha instalado cgroups y en qué punto está montado, así como qué contiene.**

Si se encuentra instalado en la carpeta /sys/fs/cgroup como podemos ver en la imagen:
![t1ej7.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t1ej7.png)


Ejercicio 10
------------

**Comprobar si el procesador o procesadores instalados tienen estos flags. ¿Qué modelo de procesador es? ¿Qué aparece como salida de esa orden?**

Comprobamos si tenemos activada la virtualizaciona nivel de hardware con el comando:
```bash
egrep '^flags.*(vmx|svm)' /proc/cpuinfo
``` 
![t1ej10.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t1ej10.png)

Si existe la virtualizacion a nivel de hardware y está activada.

Comprobamos el modelo del procesador con el comando:
```bash
cat /proc/cpuinfo
``` 

Mi procesador es: Intel(R) Core(TM) i5-2410M CPU @ 2.30GHz


Ejercicio 11
------------

**Comprobar si el núcleo instalado en tu ordenador contiene este módulo del kernel usando la orden kvm-ok.**

Primero instalamos el paquete cpu-checker para hacer un chequeo del procesador:
```bash
sudo apt-get install cpu-checker
```

Despues, ejecutamos la orden:
```bash
kvm-ok
```

Compruebo que no contiene el modulo del kernel.


Tema 2
======

Ejercicio 1
-----------

**Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).**

Se ha elegido el lenguaje Python, por lo que se va a proceder a instalar virtualenv.
Para ello, antes tenemos que tener instalado el paquete pip. por lo que lo instalamos usando:
```bash
sudo apt-get install python-pip
```

Tras esto, podemos pasar a instalar virtualenv, con el siguiente comando:
```bash
sudo pip install virtualenv
```
![t2ej1.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t2ej1.png)


Despues de la instalacion, pasamos a crear un entorno virtual:
```bash
virtualenv prueba
```

Ejercicio 2
-----------

**Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.**

Para darnos de alta en Openshift, vamos a su pagina y rellenamos el formulario con los datos.
![t2ej2.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t2ej2.png)


Ejercicio 3
-----------

**Crear una aplicación en OpenShift y dentro de ella instalar WordPress.**

Para crear una aplicacion, le damos a crear una aplicacion nueva.
![t2ej3.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t2ej3.png)

Esto nos llevara a un formulario en el que tendremos que rellenar datos de la aplicación como su url.
![t2ej3b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t2ej3b.png)

Una vez instalado, accedemos a la url que le hemos asignado a la aplicación, y automaticamente nos llevara a la configuracion de wordpress.

Rellenamos los datos necesarios para la instalación, y una vez instalado, nos pedira nuestro usuario y contraseña.
Despues, nos aparecerá una pantalla de bienvenida.
![t2ej3c.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t2ej3c.png)


Ejercicio 4
-----------

**Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.**

Seguimos el [tutorial](https://developers.google.com/apps-script/overview#your_first_script) que Google nos da para App Script y realizamos el primer script de prueba que nos ofrece.

Nos vamos a [script.google.com](script.google.com) y copiamos el codigo que hemos elegido de prueba.
![t2ej4.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t2ej4.png)
 
Una vez guardado el proyecto, lo ejecutamos, lo cual nos va a pedir permisos, que debemos aceptar.
![t2ej4b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t2ej4b.png)

Al ejecutarlo, nos llega un correo, con el link al documento que se ha creado mediante la aplicacion.

Para cambiar el nombre del archivo, entramos en las opciones, dandole a la flechita que hay al lado del nombre del documento, y elegimos el nombre para modificarlo.
Para cambiar el nombre de la funcion, lo hacemos en el codigo y finalmente guardamos.
![t2ej4c.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t2ej4c.png)


Ejercicio 5
-----------

**Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.**

Para automatizar la construccion en aplicaciones, se ha usado durante las asignaturas del grado, make para el lenguaje c++.
Por otra parte, tambien se puede usar scons.


Ejercicio 6
-----------

**Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.**

Si usamos, por ejemplo heroku con node, el fichero que determina el nombre del proyecto, version, repositorio, los scripts de construcion, etc, es el package.json

En este caso, como para el proyecto [virtualvulcano](https://github.com/ernestoalejo/virtual-vulcano) de la asignatura lo estamos usando, se va a usar el mismo package.json.

Primero, hay que instalar heroku:
```bash
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
```
Y acceder con nuestro usuario:
```bash
heroku login
```

Despues, accedemos al directorio donde se encuentra la aplicacion y ejecutamos:
```bash
git init
```
Una vez hecho esto, añadimos un remote de heroku:
```bash
heroku git:remote -a ivtest
```

Ahora, añadimos el package.json que hemos dicho anteriormente, a nuestro repositorio en git, y hacemos push a la rama master del proyecto heroku: 
```bash
git push heroku master
```


Tema 3
======

Ejercicio 1
-----------

**Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él.**

Creamos un espacio de nombres usando los siguientes comandos:
```bash
sudo unshare -u /bin/bash
hostname test
```

Despues, para montar un iso, creamos una carpeta donde se va a montar el iso y lo montamos:
```bash
mkdir /mnt/imagen

mount -o loop imagen.iso /mnt/imagen
```

Ejercicio 2
-----------

**1. Mostrar los puentes configurados en el sistema operativo.**

Para mostrar los puentes que tenemos, usamos el comando:
```bash
brctl show
```

![t3ej2.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t3ej2.png)

**2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.**

Creamos el nuevo puento con el siguiente comando:
```bash
sudo brctl addbr puente
```
Añadimos el puente creado a la interfaz:
```bash
sudo brctl addif puente wlan
```

Ejercicio 3
-----------

**1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.**

Instalamos debootstrap, introduciendo el siguiente comando:
```bash
sudo apt-get install debootstrap
```

Como hemos visto en el guion de teoria, ejecutamos el comando debootstrap para crear un sistema:
```bash
sudo debootstrap --arch=i386 trusty /home/jaulas/trusty/ http://archive.ubuntu.com/ubuntu
```
![t3ej3.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t3ej3.png)


**2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.**

Instalamos el paquete rinse para poder ejecutarlo:
```bash
sudo apt-get install rinse
```

Despues, instalamos fedora usando rinse:
```bash
sudo rinse --arch=i386 --distribution fedora-core-6 --directory /home/jaulas/fedora/
```
![t3ej3b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t3ej3b.png)


Ejercicio 4
-----------

**Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.**

Primero, entramos en una de las jaulas que hemos instalado antes(ubuntu, por ejemplo):
```bash
sudo chroot /home/jaulas/trusty
```

Despues, montamos proc como dice la teoria:
```bash
mount -t proc proc /proc
```

Instalamos el paquete en español:
```bash
apt-get install language-pack-es
```

Ahora por ejemplo, para ejecutar una aplicación, instalamos curl:
```bash
apt-get install curl
```

![t3ej4.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t3ej4.png)


Ejercicio 5
-----------

**Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.**

Instalamos nginx en la jaula ubuntu, con el siguiente comando:
```bash
apt-get install nginx
```

Iniciamos el servicio nginx para poder usarlo:
```bash
service nginx start
```

Una vez iniciado el servicio, desde fuera de la jaula, usando un navegador, introducimos localhost en la barra de direcciones y nos aparecerá la pantalla de bienvenida de nginx.
![t3ej5.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t3ej5.png)


Ejercicio 6
-----------

**Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.**

Descargamos jailkit desde la pagina oficial de jailkit y lo instalamos con el siguiente comando:
```bash
sudo ./configure && make && sudo make install
```

Creamos la nueva jaula y iniciamos jailkit:
```bash
sudo mkdir /home/jaulas/jailkit
sudo jk_init -v -j /home/jaulas/jailkit jk_lsh basicshell netutils editors
```

Creamos un usuario nuevo y lo enjaulamos, con los siguiente comandos:
```bash
sudo adduser enjauladojailkit
sudo jk_jailuser -m -j /home/jaulas/jailkit enjauladojailkit
```

Una vez realizado esto, tenemos enjaulado un usuario nuevo.



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



Tema 6
======

Ejercicio 1
-----------

**Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización.**

Para ver si funciona, podemos ver las maquinas que tenemos instalas con el siguiente comando:
```bash
virsh list --all
```
![t6ej1.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t6ej1.png)

Vemos que no tenemos ninguna maquina instalada.


Ejercicio 2
-----------

**1. Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo).**

Vamos a instalar una maquina con ttylinux:

Nos descargamos el archivo iso de la pagina oficial. Despues, tenemos que crear un disco virtual con el siguiente comando:
```bash
qemu-img create -f qcow2 imagen1.qcow2 2000M
```

Iniciamos el disco con la imagen slitaz para instalarla:
```bash
qemu-system-x86_64 -hda imagen1.qcow2 -cdrom ttylinux-pc_i686-2015.01.iso
```
![t6ej2.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t6ej2.png)


Ahora, vamos a instalar otra maquina con slitaz:

Nos descargamos el archivo iso de la pagina oficial. Despues, tenemos que crear un disco virtual con el siguiente comando:
```bash
qemu-img create -f qcow2 imagen2.qcow2 2000M
```

Iniciamos el disco con la imagen slitaz para instalarla:
```bash
qemu-system-x86_64 -hda imagen2.qcow2 -cdrom slitaz-4.0.iso
```
![t6ej2b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t6ej2b.png)


**2. Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels.**

Para este ejercicio, se va a instalar ttylinux en una maquina virtual usando VirtualBox.
Para ello, necesitamos crear una maquina nueva.
![t6ej2c.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t6ej2c.png)

Completamos la configuracion de la maquina como la memoria, etc.

Despues, una vez instalada, iniciamos la maquina y le indicamos la imagen con la que se va a arrancar, que se trata de la imagen de ttylinux que nos hemos descargado antes.
Mostramos en la imagen siguiente, la maquina ejecutandose con ttylinux.
![t6ej2d.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t6ej2d.png)


Ejercicio 3
-----------

**Crear un benchmark de velocidad de entrada salida y comprobar la diferencia entre usar paravirtualización y arrancar la máquina virtual simplemente con ``qemu-system-x86_64 -hda /media/Backup/Isos/discovirtual.img``**

- Paravirtualizacion: ``qemu-system-x86_64 -boot order=c -drive file=img-cow.qcow2,if=virtio``

|Medición    | Tiempo     |
| ---------- | ---------- |
| 1          | 8.257      |
| 2          | 8.254      |
| 3          | 8.220      |
| 4          | 8.283      |


- Usando ``qemu-system-x86_64 -hda img-cow.qcow2``

|Medición    | Tiempo     |
| ---------- | ---------- |
| 1          | 8.294      |
| 2          | 8.148      |
| 3          | 8.090      |
| 4          | 8.223      |

Como podemos ver en las tablas anteriores, es ligeramente mas rapido usando directamente ``qemu-system-x86_64 -hda /media/Backup/Isos/discovirtual.img``


Ejercicio 4
-----------

**Crear una máquina virtual Linux con 512 megas de RAM y entorno gráfico LXDE a la que se pueda acceder mediante VNC y ssh.**

Para empezar, hay que crear la imagen:
```bash
qemu-img create -f qcow2 debian.img 15G
```
Despues, la ejecutamos:
```bash
qemu-system-x86_64 -hda debian.img -cdrom debian-7.7.0-amd64-netinst.iso -m 512M
```
Instalamos lxde siguiendo estas indicaciones:

- Entramos en opciones avanzadas.
![t6ej4.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t6ej4.png)

- Accedemos a "Alternative desktop environments"
![t6ej4b.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t6ej4b.png)

- Elegimos LXDE.
![t6ej4c.png](https://raw.githubusercontent.com/albertomoreno/iv-images/master/t6ej4c.png)

Una vez instalado, ya tenemos el escritorio LXDE.

Ahora, salidmos de la maquina y la iniciamos de nuevo:
```bash
qemu-system-x86_64 -boot order=c -drive file=debian.img,if=virtio -m 512M -name debian -vnc :1
```

En una terminal aparte, ejecutaremos ``ifconfig``, vemos la direccion ip de la interfaz a la que nos vamos a conectar y nos conectaremos con el comando:
```bash
vinagre [direccion]:[puerto]
```

Despues, iniciamos la maquina de nuevo con el siguiente comando, para indicarle el puerto por el que vamos a acceder a la maquina:
```bash
qemu-system-x86_64 -boot order=c -drive file=debian.img,if=virtio -m 512M -name debian -redir tcp:[puerto]::22
```

Despues, instalamos en la maquina ssh para poder acceder:
```bash
sudo apt-get install ssh
```

Para acceder a la maquina, desde la anfitriona, ejecutamos el comando:
```bash
ssh alberto@localhost -p [puerto]
```
