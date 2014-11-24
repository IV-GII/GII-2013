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

* [+]Ejercicio 3
 - A) Crear y ejecutar un contenedor basado en Debian.
 - B) Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.

* [+]Ejercicio 4
 - A) Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.
 - B) Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.

* [+]Ejercicio 5
 - A) Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.

* [+]Ejercicio 6
 - A) Instalar juju.
 - B) Usándolo, instalar MySQL en un táper.

* [+]Ejercicio 7
 - A) Destruir toda la configuración creada anteriormente.
 - B) Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.
 - C) Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.
 
* [+]Ejercicio 8
 - A) Instalar libvirt. Te puede ayudar esta guía para Ubuntu.

* [+]Ejercicio 9
 - A) Instalar un contenedor usando virt-install.

#Clase del 17 de Noviembre de 2014
* [+]Ejercicio 10
 - A) Instalar docker.

* [+]Ejercicio 11
 - A) Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.
 - B) Buscar e instalar una imagen que incluya MongoDB.

* [+]Ejercicio 12
 - A) Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.

* [+]Ejercicio 13
 - A) Crear a partir del contenedor anterior una imagen persistente con commit.

* [+]Ejercicio 14
 - A) Crear una imagen con las herramientas necesarias para DAI sobre un sistema operativo de tu elección.
