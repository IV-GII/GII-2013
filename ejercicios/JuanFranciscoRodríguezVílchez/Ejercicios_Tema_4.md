
Ejercicios de Juan Francisco Rodríguez Vílchez
================================================

## Ejercicios Tema 4: Virtualización ligera usando contenedores ##

### Ejercicio 1 ###

**Instala LXC en tu versión de Linux favorita.**

He procedido a bajarme LXC desde Github con:

```sh
git clone https://github.com/lxc/lxc
```
Una vez descargado, accedemos al directorio y lo instalamos siguiendo las instrucciones que vienen en el archivo "INSTALL":

```sh
./autogen.sh
./configure
make
make install
```
Para configurar, construir e instalar LXC.

Otra forma para instalarlo sería desde los repositorios con:

```sh
sudo apt-get install lxc
```

Finalmente,en la siguiente captura podemos ver como LXC se encuentra correctamente instalado y preparado para ser usado:

![captura1](http://i.imgur.com/A04sHpv.png)

Tiene todas las dependencias en "enabled", es decir, listo para ser usado.

***

### Ejercicio 2 ###

**Comprobar qué interfaces puente se han creado y explicarlos.**

Primero, he procedido a crear un contenedor denominado una-caja e instalar Ubuntu en él, sin embargo me dió el siguiente error:

```sh 
lxc-create: symbol lookup error: /usr/lib/x86_64-linux-gnu/liblxc.so.1: undefined symbol: cgmanager_get_pid_cgroup_abs_sync
```
Para solucionarlo me he descargado y actualizado "libcgmanager-dev" desde [aqui](http://www.ubuntuupdates.org/package/core/trusty/main/proposed/libcgmanager-dev)

Posteriormente, procedí a crear el contenedor:

```sh
sudo lxc-create -t ubuntu -n una-caja
```
Dandome un error de que no me encuentra los 'templates', tras un buen rato buscando información, observé que al intalar lxc no se me instalaban los templates (en Linux Mint, al menos). Para solucionarlo utilicé el comando que viene [aqui](https://www.computersnyou.com/2123/installing-lxc-with-lxc-web-pannel-in-ubuntu/), consiguiendo que funcione correctamente.

Una vez creada, podemos iniciarla con:

```sh
sudo lxc-start -n una-caja
```
Introducimos usuario y password y ya estamos dentro:

![captura2](http://i.imgur.com/r8IKHZM.png)

El contenedor aunque no tiene acceso al anfitrión, si podrá acceder a internet a través de él. Esto lo podemos comprobar fácilmente a través de los puentes creados consultando el siguiente fichero:

```sh
sudo nano /var/lib/lxc/una-caja/config
```

![captura3](http://i.imgur.com/qzAVwZi.png)

En general, se ha creado un puente llamado lxcbr0 y otro con el prefijo veth, es decir, se crea una red de tipo ethernet virtual unida a lxcbr0.

Finalmente, desde fuera del contenedor, con ifconfig podemos ver que lxcbr0 se encuentra creado automaticamente. Aparece la red lxcbr0 que es una red ethernet de tipo MULTICAST. 

![captura4](http://i.imgur.com/28DlApQ.png)

***

### Ejercicio 3.1 ###

**Crear y ejecutar un contenedor basado en Debian.**

Para ejecutar un contenedor basado en Debian utilizamos la orden:

```sh
sudo lxc-create -t debian -n debian-caja
```
Necesitando primero descargar todos los paquetes para crear el contenedor antes de instalarlo y configurarlo para que sea funcional.

Y arrancamos dicho contenedor con: 

```sh
sudo lxc-start -n debian-caja
```
Pidiéndonos ahora en la terminal que introduzcamos el nombre de usuario y contraseña para acceder.

![captura5](http://i.imgur.com/ZDZU9em.png)

***

### Ejercicio 3.2 ###

**Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora.**

Como no uso ninguna ninguna versión de Ubuntu 13.04 ni superior, he podido instalar Fedora correctamente. Para ello, he utilizado ```sh sudo lxc-create -t fedora -n fedora-caja```:

![captura6](http://i.imgur.com/vnnUi99.png)

Una vez creada, he procedido a ejecutar el contenedor con:

```sh
sudo lxc-start -n fedora-caja
```
![captura7](http://i.imgur.com/MIGYe6B.png)

Como otra alternativa, también he creado un contenedor basado en CentOs:

```sh
sudo lxc-create -t centos -n centos-caja
```
Y lo he arracancado mediante: ```sh sudo lxc-start -n centos-caja```

***

### Ejercicio 4.1 ###

**Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.**

Antes de nada, tenemos que instalar 'lxc-webpanel' para ello accedemos a su [web](http://lxc-webpanel.github.io/install.html) y seguimos los pasos indicados para instalarlo (que es bastante simple):

```sh
wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash
```
Una vez instalado accedemos a http://your_ip_address:5000/ (localhost:5000) e introducimos usuario (admin) y contraseña (admin).

![captura9](http://i.imgur.com/IfXe2BZ.png)

Al entrar, podemos ver las máquinas que tenemos instaladas, además de diversos parámetros como la memoria usada, la CPU usada,...:

![captura10](http://i.imgur.com/G0dAb5r.png)

Posteriormente, para arrancar una de las máquinas virtuales solamente hay que pulsar el botón de "Start":

![captura11](http://i.imgur.com/10ynSyT.png)

En este caso, tendríamos arrancada la máquina virtual de fedora, ya que se encuentra en el estado "Running". Sin embargo, la máquina virtual de Ubuntu (una-caja) se encuentra parada ("Stopped").

En caso contrario, si queremos parar una de las máquinas virtuales solo tenemos que pulsar el botón de "Stop":

![captura12](http://i.imgur.com/vLEZBnu.png)

Como podemos ver, ambas máquinas se encuentran en estado "Stopped".

***

### Ejercicio 4.2 ###

**Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.**

Para restringir recursos, accedemos a un contenedor que se encuentre parado y entramos en sus opciones (realizando doble-click encima suya). De esta forma, obtenemos un menú como este:

![captura13](http://i.imgur.com/mkipYm6.png)

Que nos permite cambiar el tipo y link de red, los flag de red, iniciar al arrancar, etc.

Un poco más abajo, nos aparece algo tal que así:

![captura14](http://i.imgur.com/Nh75BSx.png)

De esta forma,podemos modificar el límite de memoria, el límite de memoria + swap, las CPUs,... Actualmente, como podemos ver, todos los límites están en modo "ilimitados", es decir, no hay nada restringido.

Voy a proceder a restringir los recursos:

![captura15](http://i.imgur.com/BCWIOF2.png)

De esta forma, he restringido el uso máximo de memoria a 3930 MB, el límite máximo de intercambio de memoria a 9378 MB, y finalmente, el límite de procesadores que podrá utilizar la máquina a 2.

***

### Ejercicio 5 ###

**Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx**

Para comparar las prestaciones vamos a usar una jaula y un contenedor con el mismo sistema instalado, Ubuntu. Antes de realizar las pruebas vamos a comprobar que el servidor nginx funciona correctamente en ambos sistemas. Para ello, comprobamos que el servidor está ejecutándose en ambos sistemas (service nginx status).

* Vemos que está ejecutándose en la jaula:
![captura16](http://i.imgur.com/p8OrhMG.png)

* Vemos que también está ejecutándose en el contenedor:

![captura17](http://i.imgur.com/Mj7SXQT.png)


Comprobamos que en ambos servidores funcione correctamente, así que desde el navegador de nuestro sistema accedemos a la dirección de ambos servidores.

* Para acceder al servicio instalado dentro del contenedor **"http://10.0.3.69/"**:

![captura18](http://i.imgur.com/qabrEm2.png)

* Para acceder al servicio instalado dentro de la jaula **"http://10.0.2.45/"**:

![captura19](http://i.imgur.com/6FtsCUc.png)

Ambos servidores funcionan correctamente como podemos ver anteriormente en las capturas, por lo tanto, vamos a medir las prestaciones de los mismos. Para realizar la medición procedemos a utilizar la aplicación **"ab"** (Apache Benchmark), una utilidad muy sencilla que nos permite hacer pruebas de carga a cualquier tipo de servidor web. Para usarlo hay que indicar un número de conexiones a realizar y la concurrencia con la que se realizarán las mismas. Para obtener resultados más exactos vamos a realizar el test a cada servidor unas **10 veces**, con número de conexiones que será **1000000** y una concurrencia que será **10**.

Vamos a usar ab -n 1000000 -c 10 **http://10.0.2.45/** para la jaula y ab -n 1000000 -c 10 **http://10.0.3.69/** para el contenedor.


|             |                      |      nginx (jaula)      |                                |                      |    nginx (contenedor)   |                                |
|:-----------:|:--------------------:|:-----------------------:|:------------------------------:|:--------------------:|:-----------------------:|:------------------------------:|
|             | Tiempo ejecución (s) | Solicitudes por segundo | Velocidad transferencia (KB/s) | Tiempo ejecución (s) | Solicitudes por segundo | Velocidad transferencia (KB/s) |
|   Prueba 1  |        57,291        |         15868,43        |             9234,31            |        73,323        |         12267,43        |             6748,47            |
|   Prueba 2  |        61,334        |         20070,43        |             9616,32            |        77,258        |         12778,27        |             7920,43            |
|   Prueba 3  |        63,892        |         16436,32        |             8432,92            |        62,809        |         16328,32        |             6610,86            |
|   Prueba 4  |        53,425        |         18343,98        |             8932,21            |        60,645        |         16446,64        |             7327,21            |
|   Prueba 5  |        48,338        |         29214,87        |            10891,12            |        69,644        |         15407,86        |             8732,41            |
|   Prueba 6  |        47,664        |         20553,65        |            11019,25            |        59,232        |         17010,98        |             8621,01            |
|   Prueba 7  |        44,569        |         20218,23        |            12432,53            |        72,864        |         13343,75        |             7828,75            |
|   Prueba 8  |        42,535        |         20222,43        |            10858,38            |        84,135        |         12234,55        |             6239,58            |
|   Prueba 9  |        48,237        |         21615,32        |            11323,66            |        74,775        |         12343,00        |             5375,92            |
|  Prueba 10  |        55,324        |         19132,56        |             9399,87            |        59,354        |         16232,59        |             8667,23            |
|             |                      |                         |                                |                      |                         |                                |
|    Media    |        52,609        |        20171,548        |            10213,156           |        69,403        |        15648,120        |            7545,086            |
| Desviación  |         5,723        |         1923,432        |            1123,920            |         7,434        |         1893,827        |             840,343            |


Fijandonos en los resultados obtenidos, podriamos decir que la jaula es la que presenta mejores resultados, al tener una velocidad de transferencia mayor, mayor número de solicitudes por segundo, y un tiempo de ejecución algo más pequeño. Sin embargo, para hacer una comparación más precisa, deberiamos de haber realizado una mayor cantidad de test y además, deberian de ser bastante más agresivos para poder comparar bien las prestaciones tanto en la jaula como en el contenedor. 

### Ejercicio 6.1 ###

**Instalar juju.**

Para instalar juju previamente tenemos que añadir el repositorio de la aplicación, `sudo add-apt-repository ppa:juju/stable`:

![captura20](http://i.imgur.com/kiHxznb.png)

Una vez añadido, solo nos queda actualizar los repositorios (sudo apt-get update) e instalar la aplicación con `sudo apt-get install juju-core`:

![captura21](http://i.imgur.com/BQJvAXL.png)

### Ejercicio 6.2 ###

**Usándolo, instalar MySQL en un táper.**

Para comenzar, tenemos que inicializarlo con ```sh sudo juju init ```, que crea el archivo con la información sobre los entornos de trabajo en **~/.juju/environments.yaml**, que contiene información sobre los entornos con los que suele trabajar: proveedores de servicios de nube y el local, que es el que vamos a probar. Por omisión, el fichero trabajará con Amazon EC2. Sin embargo, como vamos a trabajar en local, editamos dicho fichero y buscamos la línea **default: amazon** (configurado por defecto para trabajar con la nube de Amazon), cambiándola a **default: local** para poder trabajar localmente.

![captura22](http://i.imgur.com/JKk4CwR.png)

Como se indica en el [guión](http://jj.github.io/IV/documentos/temas/Contenedores), para poder trabajar localmente es necesario instalar MongoDB (`sudo apt-get install mongodb-server`):

![captura23](http://i.imgur.com/FGjZuQz.png)

Antes de instalar MySQL, establecemos que vamos a trabajar en el entorno de trabajo local con:

```sh 
sudo juju switch local
```

Como juju solo puede usar un táper creado por él mismo, procedemos a crearlo con:

```sh 
sudo juju bootstrap
```

Sin embargo, no he conseguido crear el táper en Linux Mint, ya que me daba numerosos errores que no he conseguido arreglar. Por lo tanto, me he ido a Ubuntu y he realizado los mismos pasos.

![captura23](http://i.imgur.com/zhWoOOt.png)

Para instalar servicios dentro del táper, usamos los charms (script YAML para realizar tareas comunes) de los que nos provee el propio sistema, concretamente el charm para instalar MySQL:

```sh 
sudo juju deploy mysql 
```

![captura24](http://i.imgur.com/QTvisnb.png)

Ya instalado comprobamos su estado con `sudo juju status`, donde vemos que aparece la máquina anfitriona (machine 0), el táper de juju (machine 1) y como servicio instalado aparece mysql.

![captura25](http://i.imgur.com/0WIY4ET.png)

### Ejercicio 7.1 ###

**Destruir toda la configuración creada anteriormente**

Para destruir toda la configuración creada anteriormente, primero tendremos que eliminar la unidad de **mysql** con:

```sh
sudo juju destroy-unit mysql/0
```

Después, destruimos la máquina creada con: 

```sh
sudo juju destroy-machine 1
```

Podemos observar el resultado de las acciones realizadas si hacemos `sudo juju status`:

![captura26](http://i.imgur.com/DIA6DEF.png)

### Ejercicio 7.2 ###

**Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.**

Primero tenemos que volver a crear la máquina anterior con:

```sh 
sudo juju add-machine 
```

Añadimos mediawiki:

```sh 
sudo juju deploy mediawiki 
``` 

Y creamos la relación entre ellos con:

```sh 
sudo juju add-relation mediawiki:db mysql 
```

Finalmente, solo nos queda exponer el servicio para que sea accesible al público:

```sh 
sudo juju expose mediawiki 
```

![captura27](http://i.imgur.com/oPvfrXJ.png)

Con `sudo juju status` vemos que todo se ha realizado correctamente:

![captura28](http://i.imgur.com/FQwr89L.png)

Finalmente, podemos comprobar si mediawiki se encuentra en funcionamiento, para ello primero vemos en que ip se encuentra con:

```sh 
sudo lxc-ls --fancy 
```

![captura29](http://i.imgur.com/77Sjys7.png)

Y accedemos al navegador con dicha IP:

![captura30](http://i.imgur.com/ggfNbA9.png)

### Ejercicio 7.3 ###

**Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.**

Procedemos a crear script al que vamos a llamar "auto_juju_mediawiki.sh" y cuyo contenido serán los comandos usados en los ejercicios anteriores.

```sh

#!/bin/bash

# Script para configurar automaticamente juju con mysql y mediawiki en cualquier máquina

# Inicializar el entorno de juju
juju init
# Seleccionar un entorno de trabajo local
juju switch local
# Crear el contenedor juju
juju bootstrap
# Instalar mediawiki
juju deploy mediawiki
# Instalar mysql
juju deploy mysql
# Crear la relación necesaria entre mediawiki y mysql
juju add-relation mediawiki:db mysql
# Publicar el acceso a mediawiki
juju expose mediawiki

```

### Ejercicio 8 ###

**Instalar libvirt. Te puede ayudar esta guía para Ubuntu.**

Lo primero que debemos comprobar para que libvirt funcione es que nuestro hardware soporta la extensión de virtualización necesaria para KVM, para ello usamos `kvm-ok` y vemos si es compatible o no.

Para instalar libvirt lo ponemos hacer desde los repositorios con :

```sh
sudo apt-get install kvm libvirt-bin
```
libvirt ofrece un interfaz de aplicación usable desde un programa, pero también un shell, virsh, para gestión desde línea de órdenes:

![captura31](http://i.imgur.com/lTXCgO6.png)

Con 'help' podemos ver la cantidad de funcionalidades que posee libvirt como gestión de dominios, monitorización de dominios, información sobre el host y el hipervisor, manejo de la red, entre otras muchas funcionalidades.


### Ejercicio 9 ###

**Instalar un contenedor usando virt-install.**

Antes de nada, procedemos a instalar "virt-install":

```sh 
sudo apt-get install virtinst 
```

Que nos permitirá instalar un sistema operativo en una máquina virtual:

![captura32](http://i.imgur.com/La2rwWZ.png)

Posteriormente, debemos de descargar alguna iso como la de Ubuntu (desde aqui por ejemplo `wget http://ubuntu.uc3m.es/ubuntu-releases//saucy/ubuntu-13.10-server-amd64.iso`) que va a ser el sistema operativo que vamos a instalar usando 'virt-install'. Una vez obtenida, utilizamos virt-install para instalarlo:

```sh
sudo virt-install -n ubuntu-libvirt -r 512 --disk path=/var/lib/libvirt/images/ubuntu-libvirt.img,bus=virtio,size=5 -c ubuntu1310server64.iso --accelerate --network network=default,model=virtio --connect=qemu:///system --vnc -v
```
* -n virt-ubuntu: el nombre de la máquina virtual.
* -r 512: la cantidad de memoria RAM en MB que usará la máquina virtual.
* --disk path=/var/lib/libvirt/images/ubuntu-libvirt.img,bus=virtio,size=8: la ruta en la que se almacenará el disco virtual del sistema, el bus que usará dicho disco y el tamaño en GB del mismo.
* -c ubuntu1310server64.iso: la ISO que vamos a instalar en el sistema.
* --accelerate": activa la tecnología de aceleración del kernel.
* --network network=default,model=virtio: el interfaz y modelo de red para la máquina virtual
* --connect=qemu:///system: el hipervisor 
* --vnc: exporta la consola virtual del huésped usando VNC.

Una vez introducido "virt-install" se creará el dominio para la máquina virtual y comenzará con la instalación de la misma. 

Adicionalmente, podemos instalar "virt-viewer" con:

`sudo apt-get install virt-viewer` que nos permite conectarnos a la consola de la máquina virtual a través de una ventana con la interfaz gráfica para poder continuar con nuestra instalación. (`virt-viewer -c qemu:///system ubuntu-libvirt`)

### Ejercicio 10 ###

**Instalar docker.**

Voy a seguir el siguiente [tutorial](http://docs.docker.com/installation/ubuntulinux/) para instalar docker.

Primero, tenemos que añadir la llaves del repositorio:

![captura33](http://i.imgur.com/KluWqi2.png)

Añadimos el repositorio de docker a /etc/apt/sources.list.d/docker.list:

```sh
$ sudo sh -c "echo deb http://get.docker.com/ubuntu docker main\ s/etc/apt/sources.list.d/docker.list"
$ sudo apt-get update
$ sudo apt-get install lxc-docker
```
Realizamos un `sudo apt-get update` para actualizar y ya podemos instalar docker (`sudo apt-get install lxc-docker`)s:

![captura34](http://i.imgur.com/qBnhDYu.png)

Finalmente, podemos arrancarlo para empezar a trabajar con él:

![captura35](http://i.imgur.com/vQ8ZbQG.png)

### Ejercicio 11.1 ###

**Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.**

Para instalar con Docker una imagen tenemos que utilizar `sudo docker pull [nombre-imagen]`. De esta forma, por ejemplo para instalar Ubuntu:

```sh 
sudo docker pull dockerfile/ubuntu 
```

![captura36](http://i.imgur.com/7mkSJB7.png)

O para instalar una imagen de CentOs:

```sh 
sudo docker pull centos 
```

![captura37](http://i.imgur.com/r5RDu3b.png)


### Ejercicio 11.2 ###

**Buscar e instalar una imagen que incluya MongoDB.**

He buscado en el [enlace proporcionado](https://registry.hub.docker.com/search?page=1&q=mongodb) una imagen y he elegido una imagen de Debian con MongoDB:

```sh 
sudo docker pull ncarlier/mongodb 
```

![captura38](http://i.imgur.com/s2IZhZt.png)

Compruebo todas las imágenes que acabo de instalar:

```sh
sudo docker images 
```

![captura39](http://i.imgur.com/Expkgey.png)

### Ejercicio 12 ###

**Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.**

Ejecutamos la shell de ubuntu con docker:

```sh 
sudo docker run -i -t ubuntu /bin/bash 
```

![captura44](http://i.imgur.com/Z04ASPI.png)

Dentro del contenedor creamos un usuario: `useradd -d /home/userdocker -m userdocker `, le cambiamos la contraseña `passwd userdocker` (para poder usarlo he tenido que instarlo con `yum install passwd`, lo añadimos `adduser userdocker sudo` y nos logueamos: `login userdocker`

![captura40](http://i.imgur.com/fWnJBfU.png)

Posteriormente, instalamos nginx:

```sh
sudo apt-get update
sudo apt-get install nginx
```

Una vez instalado, vamos a ver si nginx está funcionando correctamente:

![captura41](http://i.imgur.com/MxQSd78.png)

### Ejercicio 13 ###

**Crear a partir del contenedor anterior una imagen persistente con commit.**

Para crear una imagen persistente a partir de un contenedor necesitaremos conocer su ID, para eso utilizamos:

```sh
sudo docker ps -notrunc
```
Con `sudo docker inspect 25f405c7319c3b0f85555f80c2a664d85ea5ecf827fa2fa346b0e9d4a625c850` podemos inspeccionar el contenedor obteniendo información muy variada:

![captura42](http://i.imgur.com/JE6GnOd.png)

Solamente usando la opción commit, el ID de nuestro contenedor y una etiqueta que usaremos para identificarlo, crearemos una imagen persistente con el estado actual de nuestro contenedor:

`sudo docker commit 25f405c7319c3b0f85555f80c2a664d85ea5ecf827fa2fa346b0e9d4a625c850 commitubuntu`

Comprobamos si se ha creado la imagen persistente con commit correctamente:

![captura43](http://i.imgur.com/GWuTNQP.png)

### Ejercicio 14 ###

**Crear una imagen con las herramientas necesarias para el proyecto de la asignatura sobre un sistema operativo de tu elección.**

Antes de nada, voy a crear una imagen de Ubuntu con todas las herramientas que hemos usado durante las prácticas de la asignatura de DAI. Para crear esta imagen voy a usar un Dockerfile que construya la imagen con los siguientes paquetes instalados:

* python
* mongodb
* easy-install
* django
* web.py
* mako
* pymongo
* feedparser

El archivo Dockerfile será el siguiente:

```sh
# Ubuntu_DAI

FROM    ubuntu
MAINTAINER Juan Francisco Rodríguez Vílchez <juanfranrv@correo.ugr.es> Version: 1.0

# Instalar todos los paquetes necesarios para poder realizar las prácticas de DAI
RUN apt-key adv --keyserver keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
RUN apt-get update
RUN apt-get -y install python python-setuptools mongodb-10gen python-django gcc build-essential python-dev
RUN easy_install web.py
RUN easy_install mako
RUN easy_install pymongo
RUN easy_install feedparser
```
Como Docker permite crear una imagen usando un Dockerfile almacenado en un repositorio Github, lo he subido a mi [cuenta](https://github.com/juanfranrv/ubuntu-dai) de Github:

![captura44](http://i.imgur.com/nYXebpD.png)

Y ahora ejecutamos en la terminal para crear la imagen:

```sh
sudo docker build -t juanfranrv/ubuntu-dai -no-cache=true github.com/juanfranrv/ubuntu-dai
```
![captura44](http://i.imgur.com/vxwLRr8.png)

Una vez creada la imagen si queremos comprobar si se ha creado correctamente, podemos usar `sudo docker images` o entrar `sudo docker run -i -t juanfranrv/ubuntu-dai /bin/bash` y probar alguna aplicación de las instaladas con el Dockerfile.

![captura44](http://i.imgur.com/KQD5lvM.png)

En la captura anterior, podemos ver como la imagen juanfranrv/ubuntu-dai se encuentra creada.

Para terminar si queremos compartir nuestra imagen, primero tendremos que loguearnos en Docker desde un terminal y después hacer un push con el nombre de la imagen.

```sh
sudo docker login
sudo docker push juanfranrv/ubuntu-dai
```
![captura44](http://i.imgur.com/kL0PzZa.pngss)

Para ver la información de la imagen subida, nos registramos en la página web de [Docker](https://hub.docker.com/account/signup/). Para ello he usado mi cuenta de Github:

![captura44](http://i.imgur.com/61ZklFV.png)

Pinchamos sobre nuestro nick y nos vamos a "My Repositories":

![captura45](http://i.imgur.com/wNxZ9pA.png)

Posteriormente, seleccionamos "Add Repository>Automated Build" y elegimos Github. Autorizamos la aplicación:

![captura46](http://i.imgur.com/t4l13Kd.png)

Una vez añadida, podemos descargarla mediante:

```sh
sudo docker pull juanfranrv/ubuntu-dai
```

### Resumen visita a Trevenque ###

La visita a Trevenque estuvo muy entretenida. Al principio, estuvimos en la sala de presentaciones,en la cual, el encargado de Trevenque nos estuvo dando una visión general de lo que es Trevenque, y como evolucionó  con el paso de los años hasta sus grandes avances en la actualidad. También, nos puso un video en el que determinados clientes relataban su gran conformidad con la empresa.

Posteriormente, nos dividimos en dos grupos y fuimos a ver las instalaciones. Lo que más impacto causó, fue la gran seguridad que tenían, desde determinada elevación para la protección en caso de inundaciones hasta un gas novedoso que apaga el fuego sin dañar los servidores. Otro dato bastante interesante, fue la gran redundancia que tenían, ya que no se podía tolerar la pérdida de datos de los clientes. 

Se habló bastante de Coviran, que era una de las empresas que tenían contratados los servicios de Trevenque. Además, cada sala de servidores disponía de un lector de caras para impedir la intrusión de usuarios no autorizados.

Concluyendo, lo más impactante para mí fue la sorprendente seguridad que tenían.
