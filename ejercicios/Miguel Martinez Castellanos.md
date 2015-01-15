#TEMA 1

## Ejercicio 1
[Fujitsu Primergy TX100 Xeon E3-1220/8GB/1TB](http://www.pccomponentes.com/fujitsu_primergy_tx100_xeon_e3_1220_8gb_1tb.html?gclid=CJmasoPrhsECFVDItAod5woAtA) Tiene un precio de venta al publico de 599€.
Si elegimos una amortizacion del 12%,teniendo en cuenta que el porcentaje maximo es de 26% en un pediodo de tiempo de 10 como maximo.[Fuente de informacion](http://www.gabilos.com/webcontable/amortizacion/estimacion_directa_simplificada.htm)

*En 4 años se tendra que aplicar un 25% para amortizar el pc. Cuota anual: 149 €

*En 7 años se tendra que aplicar un 14,28% para amortizar el pc. Cuota anual : 85.36 €

Pero si elegimos un 12% de amortizacion el ordenador llegara a su amortizacion total en 8 años 4 meses y 12 dias (( 599x0,12)x8,34= 599,47€)


## Ejercicio 2
Vamos a realizar una comparacion entre un servicio de alojamiento en un servidor y alojamiento en un servidor cloud.Segun la web de [Arsys](http://www.arsys.es/hosting?gclid=CPKFjcPelcECFQ3LtAodyVEA4w) obtenemos ambos precios para unas caracteristicas de 6 cores , 8 Gb de Ram y 600 Gb de almacenamiento.

*Servidor Dedicado 225€/mes o 2700€/año.
*Servidor Cloud 285€/mes o 3420€/año.

-Si vemos el precio para un 1% de tiempo usado.

*Servidor Dedicado 27€/año.
*Servidor Cloud 34.2€/año.

-Pero si se usara un 10% del tiempo.

*Servidor Dedicado 270/año.
*Servidor Cloud 342€/año.

##Ejercicio 3.2

Realizamos un script sencillo para realizar una [suma](http://imgur.com/R7GIvGx).Seguidamente con CDE [empaquetamos](http://imgur.com/96CUB6p) el programa y finalmente lanzamos el archivo que se nos creo en la carpeta cde-package para ver si se [ejecuta](http://imgur.com/8oreLxN) sin necesidad de tener instalado python en otra maquina.

##Ejecicio 4

Realizamos el tutorial para comprender el funcionamiento de [docker](http://imgur.com/9kgsvVD) en lenguaje de comandos.

##Ejercicio 5

Instalamos el sistema de gestion de fuentes [git](http://imgur.com/vMqcjaM).

##Ejercicio 6

Creamos un que lo llamaremos Practica y lo descargaremos con git teniendo en cuenta que dicho proyecto debe contener el fichero README.Seguidamente [modificaremos](http://imgur.com/qCVnsAY) el fichero README y actualizamos obteniendo del siguiente [resultado](http://imgur.com/ixOkHtU)

##Ejercicio 7

Comprobamos si en la instalacion se encuentra instalado [cgroups](http://imgur.com/kRI8qFa),y en caso contrario lo montaremos.Una vez realizado el paso anterior procedemos a comprobar el contenido.

##Ejercicio 10

Comprobamos los flags, el tipo de procesador y el resultado a la orden realizada.

-¿Que modelo de procesador es?
  model name	: Intel(R) Core(TM)2 Duo CPU     T6600  @ 2.20GHz

-¿Cual es el resultado a la orden?
  flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx lm constant_tsc arch_perfmon pebs bts rep_good aperfmperf pni dtes64 monitor ds_cpl est tm2 ssse3 cx16 xtpr pdcm sse4_1 xsave lahf_lm

##Ejercicio 11

Comprobamos si el modulo para kvm-ok esta instalado en nuestro sistema,obteniendo el siguiente resultado:

miguel@ubuntu:~$ kvm-ok INFO: Your CPU does not support KVM extensions
KVM acceleration can NOT be used


#TEMA 2

## Ejercicio 1
**Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).**
Instalamos virtualenv desde consola siguiendo los siguientes pasos:

![Paso 1](http://i.imgur.com/b4P7ncJ.jpg)
Instalamos virtualenv...
![Paso 2](http://i.imgur.com/4Lwfky8.jpg)
Comprobamos que funciona realizando un test...
![Paso 3](http://i.imgur.com/RLgnNdC.jpg)


## Ejercicio 2
**Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.**
Nos damos de alta en OpenShift siguiendo los pasos:
Realizamos el registro en la web de [Openshift](https://www.openshift.com/)
![imagen2-1](http://i.imgur.com/II0ELuU.jpg)


## Ejercicio 3
**Crear una aplicación en OpenShift y dentro de ella instalar WordPress.**
Para crear la aplicacion clicamos en "Create my first app".
![imagen3-1](http://i.imgur.com/5vQugDx.jpg)
Una vez buscada la aplicacion de wordpress las configuramos.
![imagen3-2](http://i.imgur.com/GuhWpYJ.jpg)
Nos saldra una ventana donde podremos observar que nuestra aplicacion se ha creado correctamente.
![imagen3-3](http://i.imgur.com/Judnbcr.jpg)
Introducimos los datos para wordpress.
![imagen3-4](http://i.imgur.com/iSM6F6c.jpg)
Mensaje de bienvenida a WordPress.
![imagen3-5](http://i.imgur.com/CyQDKso.jpg)

## Ejercicio 4

**Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.**
En primer lugar siguiendo el [tutorial](https://developers.google.com/apps-script/guides/menus#custom_menus_in_google_docs_sheets_or_forms) para la creacion y modificacion de menu creamos archivo de tipo documento para codigo en google app y desde el menu herramientas clicaremos en la opcion "Editor de secuencias de Comandos".Una vez ahi podremos trabajas con el codigo que os muestro a continuacion sacado del tutorial.

![imagen4-1](http://i.imgur.com/vD9Kjc0.jpg)

## Ejercicio 5
**Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.**
Realizando la siguiente busqueda en google "Build automation python" nos encontramos una [wiki de python](https://wiki.python.org/moin/ConfigurationAndBuildTools) en la que nos habla de los distintos sistemas de construccion para este lenguaje.

Donde nos encontramos con [Buildit](https://software.agendaless.com/Members/chrism/software/buildit/README.txt)como el sistema mas sencillo y facil de usar.

## Ejercicio 6
**Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.**

Para identificar el fichero de automatizacion de mi aplicacion openshift he seguidos los pasos del siguiente [tutorial](https://developers.openshift.com/en/getting-started-client-tools.html#ubuntu)
En primer lugar debemos instalar ruby para poder trabajar.
![imagen6-1](http://i.imgur.com/l7nBc4A.png)

Despues he tenido que instalar la herramienta para poder trabajar con openshift
![imagen6-2](http://i.imgur.com/3PQQ1Vz.png)
Para acceder a nuestras aplicaciones hacemos "rhc apps"pero nos pide identificarnos
una vez realizada la autentificacion para acceder a nuestra cuenta.
Clonamos nuestra aplicacion a nuestro equipo con git clones +"URL" 
y en la siguiente ruta "cd wordpress/.openshift/action_hooks" estara nuestro fichero build como podeis ver en la imagen.
![imagen6-3](http://i.imgur.com/3euGPBp.png)
Clonamos nuestra aplicacion a nuestro equipo con git clones +"URL" 
y en la siguiente ruta "cd wordpress/.openshift/action_hooks" estara nuestro fichero build como podeis ver en la imagen.
![imagen6-4](http://i.imgur.com/SpQFA0p.png)


#TEMA 3

##Ejercicio 1
**Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback**

Primero realizamos el espacio de nombre con

```sh
sudo unshare -u /bin/bash

hostname hola_k_ase
``` 
![imagen4-1](http://i.imgur.com/4yuapgy.png)
![imagen4-2](http://i.imgur.com/hZAzTXs.png)

##Ejercicio 2
** Mostrar los puentes configurados en el sistema operativo**

Para mostrar los puntes configurados usamos el comando:
```sh
ip addr show
```
![imagen4-3](http://i.imgur.com/M8wGY7L.png)

** Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene**
Primero necesitaremos instalar el paquete bridge-utils
```sh
sudo apt-get install bridge-utils
```
y con el siguiente comando asignamos nuevo nombre a la nueva interfaz.
```sh
sudo brctl addif miwel eth0
```
![imagen4-5](http://i.imgur.com/PR6ofil.png)

##Ejercicio 3
** Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante**
 
Primero antes de nada instalamos dicha herramienta.
```sh
sudo apt-get install debootstrap
```
y acontinuacion creamos el sistema 
```sh
sudo debootstrap --arch=amd64 lucid /home/jaulas/lucid/ http://archive.ubuntu.com/ubuntu
```
![imagen4-6](http://i.imgur.com/XfsHx8a.png)
mostrando la verificacion

** Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse**
 
Instalamos rinse
```sh
sudo apt-get install rinse
```
y acontinuacion creamos el sistema 
```sh
sudo rinse --arch=amd64 --distribution-centos-6 --directory /home/jaulas/centos
```

##Ejercicio 4
**Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla**



##Ejercicio 5
**Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx**

En primer lugar instalamos curl.
```sh
sudo apt-get install curl
```
acontinuacio realizamos la instalacion de nginx

```sh
sudo apt-get install nginx
```
y finalmente lo lanzamos y comprobamos el host local.
![imagen4-7](http://i.imgur.com/WRCfsyj.png)

##Ejercicio 6
**Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar**

#TEMA 4

##Ejercicio 1
**Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.**

Instalamos lxc desde los repositorios

```sh
sudo apt-get install lxc lxctl lxc-templates
```

una vez instalado comprobamos que esta todo preparado para comenzar a trabajar con el.

![imagen_4.1](http://i.imgur.com/0nvM6vs.png)

Una vez comprobado que todos los componentes estan en estado "enabled" podemos trabajar con lxc.

Creamos un contenedor.

```sh
sudo lxc-create -t ubuntu -n una-caja
```
una vez crear la iniciamos y nos conectamos a el.

```sh
sudo lxc-start -n una-caja
```
Introduciendo como login: ubuntu y como pass: ubuntu
![imagen_4.2](http://i.imgur.com/m1P6t5h.png)

##Ejercicio 2
**Comprobar qué interfaces puente se han creado y explicarlos.**

Para comprobar que se han creado correctamente los interfacez puente accedo al fichero "config" en la siguiente ruta:
```sh
/var/lib/lxc/una-caja/config
```
![imagen_4.3](http://i.imgur.com/QBnCwgu.png)

Aqui podemos ver que los puentes se han creado correctamente y comprobamos que esta en funcionamiento.
![imagen_4.4](http://i.imgur.com/vc3OaGY.png)

##Ejercicio 3.1
**Crear y ejecutar un contenedor basado en Debian.**
Realizamos los mismos pasos que hicimos para crear un contenedor en ubuntu.

Pero en este caso el usuario y contraseña cambian 
login: root
pass:root
![imagen_4.5](http://i.imgur.com/FXXGeR5.png)

##Ejercicio 3.2
**Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue. **
![imagen_4.6](http://i.imgur.com/vE2OpuS.png)
##Ejercicio 4.1
**Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.**

Procedo a instalar lxc-webpanel para facilitarnos todo el trabajo sobre el control de las maquimas virtuales instaladas
```sh
wget http://lxc-webpanel.github.io/tools/install.sh
chmod +x install.sh
sudo ./install.sh
```
![imagen_4.7](http://i.imgur.com/5CJJIsR.png)


##Ejercicio 4.2
**Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.**

Para poder modificar los recursos de alguna de nuestras distribuciones primero deberan estas totalmente paradas y pinchando en ellas obtendremos otro panel con los parametros que se pueden modificar.
![imagen_4.8](http://i.imgur.com/FuUQbUJ.png)


##Ejercicio 5
**Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.**

##Ejercicio 6.1
**Instalar juju.**
Para proceder con la instalacion de juju primero he añadido el repositorio para su instalacion.
```sh
sudo add-apt-repository ppa:juju/stable
```
y acontinuacion realizamos la instalacion.

![imagen_4.10](http://i.imgur.com/CzaCszf.png)



##Ejercicio 6.2
**Usándolo, instalar MySQL en un táper. **

##Ejercicico 7.1
**Destruir toda la configuración creada anteriormente**

##Ejercicio 7.2
**Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.**

##Ejercicio 7.3
**Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.**

##Ejercicio 8
**Instalar libvirt. Te puede ayudar esta guía para Ubuntu. **
Antes de procede a trabajar con libvirt debemos comprobar que nuestro equipo hardware es compatible con las extensiones de virtualización necesarias para KVM.

Para ellos realizamos la comprobacion y nos damos cuenta de que nuestra CPU no soporta al virtualizacion:
![imagen_4.13](http://i.imgur.com/84S7Rzu.png)

Buscamos varias soluciones para poder realizar la virtualizacion en nuestro equipo pero las soluciones encontradas no se pueden realizar en nuestro equipo debio a la antiguedad del mismo.

Igualmente procedo a la instalacion de libvirt.
```sh
sudo apt-get install kvm libvirt-bin
```
y con la orden virsh se abrira la terminal de trabajo en linea de comandos.
![imagen_4.14](http://i.imgur.com/ehHmsSf.png)


##Ejercicio 9
**Instalar un contenedor usando virt-install.**

##Ejercicio 10
**Instalar docker.**
Realizamos la instalacion tal y como nos indica la misma pagina de [docker](http://docs.docker.com/installation/ubuntulinux/).

En primer lugar hemos tenido que añadir la clave repositorio Docker a una biblioteca de claves.
con: 
```sh
$ sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
```
una vez echo esto añadimos el repositorio 
![imagen_4.15](http://i.imgur.com/t6cuGXX.png)
y realizamos seguidamente:

```sh
sudo apt-get update
sudo apt-get install lxc-docker
```
Para comprobar que funciona correctamente lo iniciamos.

![imagen_4.16](http://i.imgur.com/xzyRxTv.png)
##Ejercicio 11.1
**Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.**
Si queremos instalar una imagen a partir de docker introduciremos el siguiente codigo:

En este caso usaremos la imagen de la distribucion de centos.
 ```sh
 sudo docker pull centos
 ```
 ![imagen_4.17](http://i.imgur.com/IdYa5Fx.png)
 
 Comprobandola de la siguiente forma:
 ![imagen_4.18](http://i.imgur.com/CPO04wz.png)
 
 Esta sentencia nos vendra bien si por cualquier caso si darnos cuenta creamos varias imagenes y necesitamos [eliminarlas](http://rm-rf.es/como-instalar-configurar-usar-docker-linux-containers/):
 ```sh
 sudo docker rmi ID_IMAGE
 ```
##Ejercicio 11.2
**Buscar e instalar una imagen que incluya MongoDB.**
Buscando la imagen para docker en la que incluya MongoDB, encontre la sentencia que me instala la imagen de mongo.
```sh
sudo docker pull mongo
```
![imagen_4.19](http://i.imgur.com/iNPq0rV.png)

##Ejercicio 12
**Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.**
En primer lugar iniciamos con docker el contenedor de ubuntu.
Para instalar nginx necesitamos crear un usuario que valide los parametros y despues cambiamos de usuario para poder instalar dicho paquete en su sesion como muestro en la imagen

![imagen_4.20](http://i.imgur.com/ceHnryY.png)

##Ejercicio 13
**Crear a partir del contenedor anterior una imagen persistente con commit. **

##Ejercicio 14
**Crear una imagen con las herramientas necesarias para el proyecto de la asignatura sobre un sistema operativo de tu elección. **

#TEMA 5
