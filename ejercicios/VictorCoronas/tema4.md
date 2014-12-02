##TEMA 4

#CONTENEDORES

#Clase del 11 de Noviembre de 2014
* [+]Ejercicio 1
 - A) Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.
 

El primer paso que debemos de dar es descargar el repositorio que necesitamos:

    git clone https://github.com/lxc/lxc

[Ver](https://www.dropbox.com/s/n79xrse4hj2x9w8/Captura%20de%20pantalla%202014-11-24%20a%20la%28s%29%2016.42.29.png?dl=0)

antes de dar el siguiente paso debemos de [instalar](https://www.dropbox.com/s/ui4jtx43m7n4zjq/Captura%20de%20pantalla%202014-11-24%20a%20la%28s%29%2016.46.07.png?dl=0):

    sudo apt-get install autoconf

 en caso de qie no lo tengamos instalado.
 
Una vez clonado el repositorio, entramos en la carpeta [lxc](https://www.dropbox.com/s/72mklpy821318r0/Captura%20de%20pantalla%202014-11-24%20a%20la%28s%29%2016.43.55.png?dl=0) y ejecutamos:

    ./autogen.sh
    ./configure
    make
    sudo make install

O usando el camino más rápido:

    apt-get install lxc

Por último, ejecutamos la orden:

    lxc-ckeckconfig

para comprobar que que esta todo [correcto](https://www.dropbox.com/s/dky9bs7vyr97mfe/Captura%20de%20pantalla%202014-11-24%20a%20la%28s%29%2016.57.13.png?dl=0).


* [+]Ejercicio 2
 - A) Comprobar qué interfaces puente se han creado y explicarlos.

 
El primer paso que debemos de dar es el de crear el contenedor:

    lxc-create -t ubuntu -n una-caja

[Ver](https://www.dropbox.com/s/dnwbr2ju8e5zux1/Captura%20de%20pantalla%202014-11-24%20a%20la%28s%29%2017.06.42.png?dl=0)

Cuando haya [terminado el proceso de descarga](https://www.dropbox.com/s/9sq5fvfv49s8qyp/Captura%20de%20pantalla%202014-11-24%20a%20la%28s%29%2017.19.26.png?dl=0), el segundo paso es el de arrancarlo:

    lxc-start -n una-caja
 
[Ver](https://www.dropbox.com/s/51erhhvx3l8zczb/Captura%20de%20pantalla%202014-11-24%20a%20la%28s%29%2017.24.36.png?dl=0)

Después listamos el estado de los contenedores con:

    lxc-list

y hacemos un:

    ifconfig -a

 [Ver](https://www.dropbox.com/s/erl3hkfbcrusp11/Captura%20de%20pantalla%202014-11-24%20a%20la%28s%29%2017.45.52.png?dl=0)

#Clase del 17 de Noviembre de 2014

* [+]Ejercicio 3
 - A) Crear y ejecutar un contenedor basado en Debian.

Lo primero que debemos de hacer es crear el contenedor donde se ubicará nuestro ubuntu con:

    lxc-create -t ubuntu-cloud -n contenedor

[Ver](https://www.dropbox.com/s/euhhnsrk82p5p5i/Captura%20de%20pantalla%202014-11-25%20a%20la%28s%29%2011.22.44.png?dl=0)

Después de haber creado el contenedor lo ejecutamos con:

    lxc-start -n contenedor 
 
Esto lo que hará será entrar en nuestro sistema, con las siguientes credenciales:

    usuario: ubuntu
    password: ubuntu


 - B) Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.

El primer paso que debemos de dar es instalar "yum" y "curl":

    apt-get install yum

[Ver](https://www.dropbox.com/s/lx8l9lh134yy46b/Captura%20de%20pantalla%202014-11-25%20a%20la%28s%29%2011.41.05.png?dl=0)

    apt-get install curl

[Ver](https://www.dropbox.com/s/89kusd6bpe997fw/Captura%20de%20pantalla%202014-11-25%20a%20la%28s%29%2011.43.30.png?dl=0)

Una vez que tenemos estos dos pasos anteriores realizados, de igual forma que en el apartado anterior vamos a crear el contenedor para fedora, de la siguiente forma:

    lxc-create -t fedora -n fedora14 -- -R 14

* [+]Ejercicio 4
 - A) Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.

El primer paso para la instalación es el siguiente:

    http://lxc-webpanel.github.io/tools/install.sh -O - | bash

Y el [proceso comenzará](https://www.dropbox.com/s/xer4ilypjpeme9h/Captura%20de%20pantalla%202014-11-25%20a%20la%28s%29%2011.59.59.png?dl=0).

Una vez instalado, abrimos una pestaña en nuestro navegador e introducimos localhost:5000 para poder usarlo.

 - B) Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.

Lo primero que debemos de hacer, para restringir los recursos de cpus es, pulsar en el panel de la izquierda sobre el contenedor sobre el que quedamos actuar, una vez que lo seleccionemos se nos muestra un menú donde podremos restringuir los recursos de CPU.

#Clase del 24 de Noviembre de 2014

* [+]Ejercicio 5
 - A) Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.

Pues para poder comparar las prestaciones, vamos a usar la jaula que teniamos del tema 2 y el contendor que hemos creado ubuntu en los ejercicios anteriores.

Lo primero que debemos de hacer es ubicarnos en el contenedor e instalar el nginx.
Una vez los hayamos instalado, con "AB" hacemos las peticiones concurrentes con:

    ab -n 1000 -c 1000 [ip]

Hecho esto en el contenedor, procedemos a entrar en la jaula donde lanzamos nginx, realizando las peticiones con:

    ab -n 1000 -c 1000 http://localhost/

y listo.

* [+]Ejercicio 6
 - A) Instalar juju.

El primer paso que tenemos que dar es el siguiente, que es añadir el [repositorio](https://www.dropbox.com/s/188lfijcr3qwewe/Captura%20de%20pantalla%202014-11-30%20a%20la%28s%29%2018.53.53.png?dl=0):

    add-apt-repository ppa:juju/stable

Seguidamente hacemos un update:

    apt-get update

Y por último pasamos a su [instalaión](https://www.dropbox.com/s/fmtb5v67sd1az3l/Captura%20de%20pantalla%202014-11-30%20a%20la%28s%29%2019.05.15.png?dl=0):

    apt-get install juju-core

 - B) Usándolo, instalar MySQL en un táper.

Ahora lo que tenemos que hacer es [inicializar](https://www.dropbox.com/s/tpas34outcz0a11/Captura%20de%20pantalla%202014-11-30%20a%20la%28s%29%2019.08.06.png?dl=0) JUJU con:

    juju init

Después entramos en el fichero:

    vim ~/.juju/environments.yaml

Para cambiar la línea:

    default:amazon

por:

    default:local

[Ver](https://www.dropbox.com/s/uuz79qjlp9x7ehg/Captura%20de%20pantalla%202014-11-30%20a%20la%28s%29%2019.15.53.png?dl=0)

Una vez hecho esto procedemos a hacer lo siguiente:

    juju switch local
    juju bootstrap
    juju deploy mysql
    juju status


* [+]Ejercicio 7
 - A) Destruir toda la configuración creada anteriormente.

Lo que tenemos que hacer para destruir toda la configuración solo es necesario hacer lo siguiente:

    juju destroy-service mysql
    juju destroy-service mediawiki
    juju destroy-environment local

[Ver](https://www.dropbox.com/s/92bsw86s2ky9i0w/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2011.10.27.png?dl=0)

 - B) Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.

Para este pasa habria que hacer los siguiente:

    juju bootstrap
    juju deploy mediawiki
    juju deploy mysql
    juju add-relation mediawiki:db mysql
    juju expose mediawiki

 - C) Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.

Lo que tenemos que hacer ahora es reunir todos los comandos usados anteriormente en un script. Lo guardamos todo con la extensión ".sh", le cambiamos los permisos "chmod +x ejercicio7.sh" y lo lanzamos:

    ./ejercicio7.sh

Esto quedaria de la siguiente manera:

    #!/bin/bash
    juju init
    juju switch local 
    juju bootstrap 
    juju deploy mediawiki
    juju deploy mysql 
    juju add-relation mediawiki:db mysql 
    juju expose mediawiki 
    juju status 

* [+]Ejercicio 8
 - A) Instalar libvirt. Te puede ayudar esta guía para Ubuntu.

Para poder instalarlo solo tenemos que introducir el siguiente comando:

    apt-get install kvm libvirt-bin

[Ver](https://www.dropbox.com/s/6yici8abxzjvv4b/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2011.25.26.png?dl=0)

* [+]Ejercicio 9
 - A) Instalar un contenedor usando virt-install.

Lo primero que debemos de hacer es instalar "virt-install" con:

    apt-get install virtinst

[Ver](https://www.dropbox.com/s/duq2jeah644ja9n/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2011.28.51.png?dl=0)

Ahora desacarhamos la imagen de ubuntu:

    virt-install --name ubuntu --ram 512 --file=/var/lib/libvirt/images/ubuntu-12.04.4-server-i386.img --file-size=3 --vnc --cdrom=/var/lib/libvirt/images/ubuntu-12.04.4-server-i386.iso

[Ver](https://www.dropbox.com/s/x0karibfaq17i56/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2011.37.14.png?dl=0)

Finalmente, instalamos "virt-viewer" y continuamos con la instalación:

    apt-get install virt-viewer 

#Clase del 17 y 24 y 25 de Noviembre de 2014
* [+]Ejercicio 10
 - A) Instalar docker.

El primer paso que debemos de dar es ejecutar un simple script de curl:

    curl -sSL https://get.docker.com/ubuntu/ | sudo sh

Una vez ejecutado comenzará el proceso de [descarga e instalción](https://www.dropbox.com/s/2n34nvneyfobhkf/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2011.49.47.png?dl=0).

Ahora ejecutamos el servicio con:

    docker -d &

Pero al ejecutarlo de da un pequeño [error](https://www.dropbox.com/s/0zgte1dfjep5neb/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2011.51.28.png?dl=0), para ello hacemos esto para [arreglarlo](https://www.dropbox.com/s/89hvhvq72b2hz1i/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2011.54.19.png?dl=0).

Al ejecutarlo nuevamente aparecería lo siguiente:
[Ver](https://www.dropbox.com/s/o66xlph2cys3y2a/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2011.55.03.png?dl=0)

Para ver que funciona realmente, creamos un contenedor:

    docker pull ubuntu

[Ver](https://www.dropbox.com/s/cttpdyizz0k5ez5/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2011.56.35.png?dl=0)

#Clase del 1 y 2 de Diciembre de 2014
* [+]Ejercicio 11
 - A) Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.

Lo primero que debemos de hacer es instalar CentOs, para ello hacemos:

    docker pull centos

[Ver](https://www.dropbox.com/s/3vha5youe1jss8q/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2012.19.12.png?dl=0)

 - B) Buscar e instalar una imagen que incluya MongoDB.

Una vez descargado CentOs y busco en el [enlace](https://registry.hub.docker.com/search?q=mongodb&searchfield=) proporcionado en los apuntes y encuentro un imagen de Gentoo con MongoDB, ejecutamos el siguiente comando:

    docker pull hairmare/mongodb

[Ver](https://www.dropbox.com/s/r3b78tuz18v3hfu/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2012.42.02.png?dl=0)

* [+]Ejercicio 12
 - A) Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.

Lo primero que debemos de hacer es ejecutar el contenedor con:

    docker run -i -t ubuntu /bin/bash
    docker ps

El siguiente paso es crear el usuario en el contenedor con los siguientes comandos:

    useradd -d /home/usudocker -m usudocker 
    passwd usudocker 
    adduser usudocker
    login usudocker

[Ver](https://www.dropbox.com/s/7cpo06yu8m3teg6/Captura%20de%20pantalla%202014-12-02%20a%20la%28s%29%2016.27.55.png?dl=0)

Una vez realizado los pasos anteriores, debemos de instalar "nginx":

    sudo apt-get install software-properties-common

añadimos el repositorio con:

    add-apt-repository ppa:nginx/stable

por último instalamos "nginx" con:

    apt-get install nginx

* [+]Ejercicio 13
 - A) Crear a partir del contenedor anterior una imagen persistente con commit.

* [+]Ejercicio 14
 - A) Crear una imagen con las herramientas necesarias para DAI sobre un sistema operativo de tu elección.
