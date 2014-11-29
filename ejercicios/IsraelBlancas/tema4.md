Lista de ejercicios Israel Blancas Álvarez
============================

#TEMA 4: Virtualización ligera usando contenedores#


##Sesión 11-11-2014##

##Ejercicio 1##

#####Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.#####

Hay que realizar la instalación desde el repositorio:

``sudo apt-get install lxc``

Una vez hecho esto, será necesario comprobar si nuestra máquina es compatible utilizando el comando ``lxc-checkconfig``

![Captura lxc](http://fotos.subefotos.com/f289a0c38382f213b138934705503884o.jpg)



***

##Ejercicio 2##

#####Comprobar qué interfaces puente se han creado y explicarlos.#####

Tras ejecutar `ipconfig -a`, veo que se han creado dos nuevas interfaces:
+ lxcbr0
+ veth06TK6W

Y ejecutando `brctl show`
+ lxcbr0

De esta forma el contenedor tiene acceso a Internet.



***

##Ejercicio 3##

#####1. Crear y ejecutar un contenedor basado en Debian.#####
#####2. Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, [Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.](https://github.com/IV-GII/GII-2013/issues/87#issuecomment-28639976)#####

Para crear el contenedor Debian, simplemente he ejecutado `sudo lxc-create -t debian -n debianita` y lo he ejecutado con `sudo lxc-start -n debianita`

![Contenedor Debian](http://fotos.subefotos.com/7faad1163abf4a78800ab2d21f511a29o.jpg)

Para crear el contenedor CentOS, simplemente he ejecutado `sudo lxc-create -t centos -n new` y lo he ejecutado con `sudo lxc-start -n new`

![Contenedor CentOS](http://fotos.subefotos.com/2ae8ba0bd41bb97cf90cf428a553b4d6o.jpg)



***

##Ejercicio 3##

#####1. Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.#####
#####2. Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.#####
Tras instalarlo utilizando `wget http://lxc-webpanel.github.io/tools/install.sh -O - | sudo bash`, he accedido a `http://localhost:5000` y he gestionado los contenedores.

![lxc-webpanel](http://fotos.subefotos.com/13b4bef58137ba2ae35a780054990dd4o.jpg)

En la parte superior, si pulsamos sobre un contenedor, podemos editar sus parámetros

![lxc-webpanel edición de contenedor](http://fotos.subefotos.com/87fd42d0ca32de2a319a0c6058830c6co.jpg)
