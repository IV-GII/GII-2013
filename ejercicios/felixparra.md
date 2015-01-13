# Ejercicios de FelixParra
# Modulo I - Introduccion a la infraestructura virtual

**Ejercicio 1:**<br />
**Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años.**<br /><br />
Servidor: [Link del servidor](http://www.dynos.es/servidor-hp-proliant-ml350e-g8-xeon-e5-2407-2.2-ghz-2gb-ddr3-500gb-sata-lff-dvd-rw-matrox-g200-array-b120i-887111422231__470065-691.html "Servidor")

<br />Precio total: 1035€
<br />Base Imponible: 855,37€
<br />IVA: 179.63€ 
<br />*-Coste de amortización 4 años:*
<br />Año 2015 (25%): 213,84€
<br />Año 2016 (25%): 213,84€
<br />Año 2017 (25%): 213,84€
<br />Año 2018 (25%): 213,84€
<br />*-Coste de amortización 7 años:*
<br />Año 2015 (15%): 128,30€
<br />Año 2016 (15%): 128,30€
<br />Año 2017 (15%): 128,30€ 
<br />Año 2018 (15%): 128,30€
<br />Año 2019 (15%): 128,30€
<br />Año 2020 (15%): 128,30€
<br />Año 2021 (10%): 85,57€
<br />

**Ejercicio 2:**<br />
**Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.** <br />

Fuente: t2.mircro [Amazon](http://aws.amazon.com/es/ec2/pricing/ "Amazon")<br />
Fuente: A0 [Azure](http://azure.microsoft.com/es-es/pricing/details/cloud-services/ "Azure")<br />
* Vendedor 1: Azure 0,0148€/h
  * Tiempo de uso 1%: 1,29648 €
  * Tiempo de uso 10%: 12,9648 €
* Vendedor 2: Amazon 0,014€/hora
  * Tiempo de uso 1%: 1,2264 €
  * Tiempo de uso 10%: 12,264 €
La diferencia radica en las características que ofrecen cada una de las empresas por ese precio, como pueden ser servicios extra, horas gratuitas de uso, o almacenamiento extra.
<br />

**Ejercicio 3:**<br />
**¿Qué tipo de virtualización usarías en cada caso?** <br />
######Apartado 3.1: [Foro](https://github.com/JJ/GII-2014/issues/71 "Respuesta") 

######Apartado 3.2: Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.
<br />
![imagen EJ_3](http://imageshack.com/a/img909/4383/9U1I1A.png)

**Ejercicio 4:**<br />
**Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.**<br />
![imagen EJ_4](http://imageshack.com/a/img673/3176/c3IQoX.png)

<br />**Ejercicio 5:** <br />
**Instala el sistema de gestión de fuentes git**<br />

![imagen Ej_5](http://imageshack.com/a/img538/9873/rqrgai.png)

<br />**Ejercicio 6:** <br />
######6.1.Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README.<br />
![imagen Ej_6_1_1](http://imageshack.com/a/img673/1894/CtkfwI.png)<br />
![imagen Ej_6_1_2](http://imageshack.com/a/img538/5820/BICLPq.png)<br />
######6.2.Modificar el readme y subir el fichero modificado.<br />
![imagen Ej_6_1_2](http://imageshack.com/a/img674/9550/CLdz4f.png)

<br />**Ejercicio 7:** <br />
**Comprobar si en la instalación hecha se ha instalado cgroups y en qué punto está montado, así como qué contiene.**<br />
-La instalación esta hecha y se ha montado en /sys/fs/cgroup<br />
-Lo que contiene es:<br />
![imagen Ej_7](http://imageshack.com/a/img661/4265/QVSZsN.png)

**Ejercicio 8:**
######8.1 - Crear diferentes grupos de control sobre un sistema operativo Linux. Ejecutar en uno de ellos el navegador, en otro un procesador de textos y en uno último cualquier otro proceso. Comparar el uso de recursos de unos y otros durante un tiempo determinado.

######8.2 - Calcular el coste real de uso de recursos de un ordenador teniendo en cuenta sus costes de amortización. Añadir los costes eléctricos correspondientes

<br />**Ejercicio 9:**<br>
######9.1 - Discutir diferentes escenarios de limitación de uso de recursos o de asignación de los mismos a una u otra CPU.<br />
######9.2 - Implementar usando el fichero de configuración de cgcreate una política que dé menos prioridad a los procesos de usuario que a los procesos del sistema (o viceversa).<br />
######9.3 - Usar un programa que muestre en tiempo real la carga del sistema tal como htopy comprobar los efectos de la migración en tiempo real de una tarea pesada de un procesador a otro (si se tiene dos núcleos en el sistema). <br />
######9.4 - Configurar un servidor para que el servidor web que se ejecute reciba mayor prioridad de entrada/salida que el resto de los usuarios.<br />

**Ejercicio 10:**<br />
**Comprobar si el procesador o procesadores instalados tienen estos flags. ¿Qué modelo de procesador es? ¿Qué aparece como salida de esa orden?**<br />
Al trabajar desde una máquina virtual la orden egrep '^flags.*(vmx|svm)' /proc/cpuinfo no funciona. El archivo cpuinfo es el siguiente: <br /> 
![imagen Ej_10](http://imageshack.com/a/img910/3717/q2bvds.png)

**Ejercicio 11:**<br />
**Comprobar si el núcleo instalado en tu ordenador contiene este módulo del kernel usando la orden kvm-ok.**<br />
![imagen Ej_11](http://imageshack.com/a/img674/6798/6sq8cp.png)

**Ejercicio 12:**<br />
**Comentar diferentes soluciones de Software as a Service de uso habitual**<br />
Foro: [Contestación](https://github.com/JJ/GII-2014/issues/72 "Contestación")<br />

<hr />

# Modulo II - Creando aplicaciones en la nube

**Ejercicio 1:**<br />
**Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba,obviamente).**<br />
Instalación de virtualenv para python.

**Ejercicio 2:**<br />
**Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.**<br />
![imagen EJ_2_2](http://imageshack.com/a/img911/5276/OiDENR.png)

**Ejercicio 3:**<br />
**Crear una aplicación en OpenShift y dentro de ella instalar WordPress.**<br />
[Link web](http://felix-parra.rhcloud.com/ "Web") 
![imagen EJ_2_3](http://imageshack.com/a/img674/7789/FPOF8Z.png)

**Ejercicio 4:**<br />
**Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.**<br />
Primero creamos el script y otorgamos persmisos:<br >
![imagen P2_4_1](http://imageshack.com/a/img912/5537/f3iUBe.png)

<br />A continuación vemos los resultado en nuestro dashboard de Drive:<br />
![imagen P2_4_2](http://imageshack.com/a/img903/529/5hJELd.png)

<br />Por último se observa el e-mail llegado a nuestra cuenta: <br />
![imagen P2_4_3](http://imageshack.com/a/img673/4495/dOlZHT.png)

**Ejercicio 5:**<br />
**Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.**<br />
De forma asidua uso make, y se puede decir que Make es una herramienta de gestión de dependencias, típicamente, las que existen entre los archivos que componen el código fuente de un programa, para dirigir su recompilación o "generación" automáticamente. Si bien es cierto que su función básica consiste en determinar automáticamente qué partes de un programa requieren ser recompiladas y ejecutar los comandos necesarios para hacerlo, también lo es que Make puede usarse en cualquier escenario en el que se requiera, de alguna forma, actualizar automáticamente un conjunto de archivos a partir de otro, cada vez que éste cambie. [Wikipedia](http://es.wikipedia.org/wiki/Make)

**Ejercicio 6:**<br />
**Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.**<br />
Al realizar el proyecto sobre OpenShift, éste facilita un link para automatizar la construcción [Client tools](https://developers.openshift.com/en/getting-started-client-tools.html#ubuntu), donde los pasos que debia seguir son:
+ Instalar o tener instalado Ruby
+ Instalar o tener instalado Git
+ Usar el paquete RubyGems para instalar las herramientas para el cliente de Openshift
+ Utilizar: rhc setup
+ Seguir los pasos de instalación para vincularlo con mi cuenta, crear las key y poder establecer la configuración incial.

**Ejercicio 7:**<br />
**Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.**<br />
Para netbeans, [JUnit](https://netbeans.org/kb/docs/java/junit-intro.html)

<hr />

# Modulo III - Técnicas de virtualización

**Ejercicio 1:**<br />
**Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback**<br />
Los pasos a ejecutar son: <br />
![M3_1](https://raw.githubusercontent.com/felixparra/Imagenes/master/M3_1.png) <br /> <br />
Y a continuación montamos la imagen ISO con el siguiente comando: <br />
 `mount -o loop disk.iso /mnt/disk`

**Ejercicio 2:**<br />
######2.1 Mostrar los puentes configurados en el sistema operativo.
![M3_2](https://raw.githubusercontent.com/felixparra/Imagenes/master/M3_2.png) <br />
######2.2 Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.
Creamos el puente: <br />
`brctl addbr bridgeIV`
<br />Configuramos el puente: <br />
![M3_2](https://raw.githubusercontent.com/felixparra/Imagenes/master/M3_2_2.png) <br />

<br />Activamos el puente: <br />
`ifconfig bridgeIV up ` <br />

**Ejercicio 3:**<br />
######3.1 Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.
Instalamos debootstrap: <br />
`sudo apt-get install debootstrap` <br />
<br />Creación del sistemas minimo: <br />
![M3_3](https://raw.githubusercontent.com/felixparra/Imagenes/master/M3_3.png) <br />

######3.2 Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.
Instalamos Rinse: <br />
`sudo apt-get install rinse` <br />
<br />Creación del sistema minimo: <br />
![M3_3_2](https://raw.githubusercontent.com/felixparra/Imagenes/master/M3_3_2.png) <br />

**Ejercicio 4:**<br />
**Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.** <br />
El sistema utilizado es el sistema creado anteriormente (ejercicio 3.1). A continuación entramos en el sistema y montamos /proc<br />
`chroot /home/jaulas/trustytahr` <br />
`mount -t proc proc /proc` <br />
Instalamos gedit con el comando: <br />
`apt-get install gedit` <br />

**Ejercicio 5:**<br />
**Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.**<br />
Instalamos nginx: <br />
`apt-get install nginx` <br />
Lanzamos el servidor: <br />
`service nginx start `<br />
Verificamos el estado: <br />
`service nginx status`<br />
Comprobamos que todo esta correcto con curl: <br />
`apt-get install curl` <br />
`curl localhost` <br />

**Ejercicio 6:**<br /> 
**Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar** <br />
Descargamos jailkit: <br />
`wget http://olivier.sessink.nl/jailkit/jailkit-2.17.tar.gz` <br />
Lo descomprimimos, accedemos a jailkit-2.17 y lo instalamos. <br />
`tar -xzvf jailkit-2.17.tar.gz` <br />
`cd jailkit-2.17` <br />
`sudo ./configure && make && sudo make install` <br />
Creamos el directorio para la jaula: <br />
`sudo mkdir /home/jailkit` <br />
Asignamos root: <br />
`sudo chown root:root /home/jailkit` <br />
Damos permisos: <br />
`chmod 0755 /home/jailkit`<br />
Indicamos que se usará en la jaula:<br />
`sudo jk_init -v /home/jailkit basicshell`<br />
`sudo jk_init -v /home/jailkit editors`<br />
Creamos un usuario: <br />
`sudo adduser usuarioJailkit`<br />
Enjaulamos al usuario:<br />
`jk_jailuser -m -j /home/jailkit usuarioJailkit`<br />
Establecemos una password:<br />
`sudo passwd usuarioJailkit`<br />

<hr />

# Modulo IV - Virtualización ligera usando contenedores

**Ejercicio 1:**<br />
**Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.** <br />
`apt-get update`<br />
`apt-get install lxc`<br />
A continuacion comprobamos si esta todo correcto:<br />
`lxc-checkconfig`<br />

**Ejercicio 2:**<br />
**Comprobar qué interfaces puente se han creado y explicarlos.**<br />
![Mod4_ej2](https://raw.githubusercontent.com/felixparra/Imagenes/master/Mod4_ej2.png)

**Ejercicio 3:**<br />
######3.1 - Crear y ejecutar un contenedor basado en Debian.
`sudo lxc-create -t debian -n debianBox` <br />
Para arrancarlo ejecutamos: <br />
`sudo lxc-start -n debianBox` <br />

######3.2 - Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.
`sudo lxc-create -t gentoo -n gentooBox` <br />
Para arrancarlo ejecutamos: <br />
`sudo lxc-start -n gentooBox` <br />

**Ejercicio 4:**<br />
######4.1 - Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.
`wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash` <br />
Accedemos a http://<DireccionIP>:5000/ (localhost:5000) e introducimos usuario (admin) y contraseña (admin), una vez dentro veremos las máquinas instaladas<br />
![Mod4_ej4_1](https://raw.githubusercontent.com/felixparra/Imagenes/master/Mod4_ej4_1.png)

######4.2 - Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.
![Mod4_ej4_2](https://raw.githubusercontent.com/felixparra/Imagenes/master/mod4_ej4_2.png)

**Ejercicio 5:**<br />
**Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.**<br />

**Ejercicio 6:**<br />
######6.1 - Instalar juju.
Añadimos el repositorio<br />
`sudo add-apt-repository ppa:juju/stable`<br />
Actualizamos:<br />
`apt-get update`<br />
Instalamos:<br />
`apt-get install juju-core`<br />


######6.2 - Usándolo, instalar MySQL en un táper.

**Ejercicio 7:**<br />
######7.1 - Destruir toda la configuración creada anteriormente

######7.2 - Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.

######7.3Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.

**Ejercicio 8:**<br />
**Instalar libvirt. Te puede ayudar esta guía para Ubuntu.** <br />
`sudo apt-get install kvm libvirt-bin`<br />
`sudo apt-get install virtinst`<br />

**Ejercicio 9:**<br />
**Instalar un contenedor usando virt-install.**<br />

**Ejercicio 10:**<br />
**Instalar docker.** <br />
`apt-get update`<br />
`sudo apt-get install docker.io`<br />
Comprobamos la instalación con:<br />
`docker -v`<br />

**Ejercicio 11:**<br />
######11.1 - Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.
`sudo docker pull ubuntu`<br />
`sudo docker pull centos`<br />
######11.2 - Buscar e instalar una imagen que incluya MongoDB.
`docker pull dockerfile/mongodb`<br />
**Ejercicio 12:**<br />
**Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.** <br />

**Ejercicio 13:**<br />
**Crear a partir del contenedor anterior una imagen persistente con commit.** <br />

**Ejercicio 14:**<br />
**Crear una imagen con las herramientas necesarias para el proyecto de la asignatura sobre un sistema operativo de tu elección.** <br />

<hr />

# Seminario - Introducción a Ruby

**Ejercicio 1:**<br />
**Instalar Ruby y usar** <br />
Ya lo tenia instalado: ruby 1.9.3p484 (2013-11-22 revision 43786) [i686-linux] <br />

**Ejercicio 2:**<br />
**Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable.** <br />
\#!/usr/bin/ruby <br />
 for i in 1..5<br />
  puts "#{i}"<br />
end<br />

**Ejercicio 3:**<br />
**¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.** <br />
Si se pueden crear estructuras de datos mixtas. Un ejemplo es el siguiente: </ br>
\#!/usr/bin/ruby<br />
array_Hashes = {<br />
    :hash1 =>{<br />
    :prueba => "prueba",<br />
    :numero => 1<br />
 },<br />
    :hash2 =>{<br />
    :prueba => "prueba",<br />
    :numero => 2<br />
    }<br />
}<br />
puts array_Hashes<br />

**Ejercicio 4:**<br />
**Crear una serie de funciones instanciadas con un URL que devuelvan algún tipo de información sobre el mismo: fecha de última modificación, por ejemplo. Pista: esa información está en la cabecera HTTP que devuelve**<br />
\#!/usr/bin/ruby<br />
require 'net/http'<br />
url = "www.google.es"<br />

puts "URL: " + url<br />
puts "Servidor: "+ Net::HTTP.get_response(url,'/')['server'].to_s<br />
puts "Contenido: "+ Net::HTTP.get_response(url,'/')['content-type'].to_s<br />

**Ejercicio 5:**<br />
**Ver si está disponible Vagrant como una gema de Ruby e instalarla.**
Ver si en esta Vagrant:<br />
 gem search --remote vagrant<br />
Y a continuacion instalar:<br />
 sudo gem install vagrant<br />

<hr />

# Modulo V - Virtualización del almacenamiento

**Ejercicio 1:**<br />
######1.1 - ¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?<br />

######1.2 - Si tienes acceso en tu escuela o facultad a un ordenador común para las prácticas, ¿qué almacenamiento físico utiliza?<br />

######1.3 -Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.<br />

**Ejercicio 2:**<br />
**Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.**<br />

**Ejercicio 3:**<br />
**Crear imágenes con estos formatos (y otros que se encuentren tales como VMDK) y manipularlas a base de montarlas o con cualquier otra utilidad que se encuentre**<br />

**Ejercicio 4:**<br />
**Crear uno o varios sistema de ficheros en bucle usando un formato que no sea habitual (xfs o btrfs) y comparar las prestaciones de entrada/salida entre sí y entre ellos y el sistema de ficheros en el que se encuentra, para comprobar el overhead que se añade mediante este sistema**<br />

**Ejercicio 5:**<br />
**Instalar ceph en tu sistema operativo.**<br />

**Ejercicio 6:**<br />
**Crear un dispositivo ceph usando BTRFS o XFS**<br />

**Ejercicio 7:**<br />
**Almacenar objetos y ver la forma de almacenar directorios completos usando ceph y rados.**<br />

**Ejercicio 8:**<br />
**Tras crear la cuenta de Azure, instalar las herramientas de línea de órdenes (Command line interface, cli) del mismo y configurarlas con la cuenta Azure correspondiente**<br />

**Ejercicio 9:**<br />
**Crear varios contenedores en la cuenta usando la línea de órdenes para ficheros de diferente tipo y almacenar en ellos las imágenes en las que capturéis las pantallas donde se muestre lo que habéis hecho.**<br />

**Ejercicio 10:**<br />
**Desde un programa en Ruby o en algún otro lenguaje, listar los blobs que hay en un contenedor, crear un fichero con la lista de los mismos y subirla al propio contenedor. Muy meta todo.**<br />

<hr />

# Modulo VI - Virtualización completa: uso de máquinas virtuales

**Ejercicio 1:**<br />
**Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización.** <br />

**Ejercicio 2:**<br />
###### 2.1 Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo).<br />

###### 2.2 Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels.<br />

**Ejercicio 3:**<br />
**Crear un benchmark de velocidad de entrada salida y comprobar la diferencia entre usar paravirtualización y arrancar la máquina virtual simplemente con**<br />

**Ejercicio 4:**<br />
**Crear una máquina virtual Linux con 512 megas de RAM y entorno gráfico LXDE a la que se pueda acceder mediante VNC y ssh.**<br />

**Ejercicio 5:**<br />
**Crear una máquina virtual ubuntu e instalar en ella un servidor nginx para poder acceder mediante web.**<br />

**Ejercicio 6:**<br />
**Usar juju para hacer el ejercicio anterior.**<br />

**Ejercicio 7:**<br />
**Instalar una máquina virtual con Linux Mint para el hipervisor que tengas instalado.**<br />



