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

##Ejercicio 4##

#####1. Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.#####
#####2. Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.#####
Tras instalarlo utilizando `wget http://lxc-webpanel.github.io/tools/install.sh -O - | sudo bash`, he accedido a `http://localhost:5000` y he gestionado los contenedores.

![lxc-webpanel](http://fotos.subefotos.com/13b4bef58137ba2ae35a780054990dd4o.jpg)

En la parte superior, si pulsamos sobre un contenedor, podemos editar sus parámetros

![lxc-webpanel edición de contenedor](http://fotos.subefotos.com/87fd42d0ca32de2a319a0c6058830c6co.jpg)



***

##Ejercicio 5##

#####Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.#####
He utilizado OpenWebLoad como benchmark. He puesto que sean 1000 clientes simultánelos, haciendo peticiones para servir una imagen de 2.5MB (para que al servidor le cueste realizar envíos).


**Resultados con el contenedor**:

MaTps  65.00, Tps  65.00, Resp Time  0.252, Err   0%, Count	65
MaTps  61.26, Tps  27.57, Resp Time  0.681, Err   0%, Count	94
MaTps  55.36, Tps   2.33, Resp Time  1.232, Err   0%, Count	97
MaTps  49.87, Tps   0.38, Resp Time  4.869, Err   0%, Count	98
MaTps  45.35, Tps   4.68, Resp Time  6.408, Err   0%, Count 103
MaTps  41.02, Tps   2.12, Resp Time  7.595, Err   0%, Count 107
MaTps  37.39, Tps   4.70, Resp Time  9.221, Err   0%, Count 117
MaTps  33.71, Tps   0.59, Resp Time 12.472, Err   0%, Count 123
MaTps  30.53, Tps   1.89, Resp Time 21.698, Err   0%, Count 128
MaTps  27.49, Tps   0.10, Resp Time 33.351, Err   0%, Count 129
MaTps  24.75, Tps   0.15, Resp Time 40.056, Err   0%, Count 130
MaTps  22.29, Tps   0.15, Resp Time 45.722, Err   0%, Count 131
MaTps  20.08, Tps   0.20, Resp Time 51.666, Err   0%, Count 132
MaTps  18.20, Tps   1.28, Resp Time 51.967, Err   0%, Count 134


**Resultados con la jaula**:

MaTps  54.15, Tps  50.55, Resp Time  0.514, Err   0%, Count	35
MaTps  42.00, Tps  32.21, Resp Time  1.545, Err   0%, Count	47
MaTps  42.65, Tps   2.01, Resp Time  3.001, Err   0%, Count	60
MaTps  49.45, Tps   2.80, Resp Time  2.457, Err   0%, Count	73
MaTps  45.88, Tps   2.76, Resp Time 12.120, Err   0%, Count 85
MaTps  45.99, Tps   1.05, Resp Time 13.504, Err   0%, Count 93
MaTps  24.21, Tps   2.39, Resp Time 15.104, Err   0%, Count 105
MaTps  21.79, Tps   0.91, Resp Time 18.985, Err   0%, Count 108
MaTps  20.69, Tps   0.21, Resp Time 35.412, Err   0%, Count 111
MaTps  18.74, Tps   1.53, Resp Time 46.253, Err   0%, Count 115
MaTps  12.01, Tps   0.63, Resp Time 50.367, Err   0%, Count 118
MaTps  14.03, Tps   1.20, Resp Time 56.210, Err   0%, Count 122
MaTps  11.42, Tps   0.12, Resp Time 63.326, Err   0%, Count 126
MaTps  10.21, Tps   0.90, Resp Time 67.001, Err   0%, Count 128


Como se puede ver, la jaula es más lenta (sirve menos peticiones) que el contenedor.
