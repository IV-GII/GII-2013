Ejercicios de Julio Martínez Martínez-Checa
============================

# Tema 4

## Ejercicio 1 ##
**Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.**

Ejecutando

```
$ sudo apt-get install lxc
```

Nos descargamos la versión 1.0.6 de los repositorios de Debian

## Ejercicio 2 ##
**Comprobar qué interfaces puente se han creado y explicarlos.**

Por defecto no me ha creado ningún puente, así que he seguido el manual de [esta página](http://debian-handbook.info/browse/es-ES/stable/sect.virtualization.html)

Tenemos que crear un interfaz br0 que nos haga de puente. Para ello editamos el archivo /etc/network interfaces como sigue:

```
auto lo
iface lo inet loopback

# Interfaz eth0 sin cambios
auto eth0
iface eth0 inet dhcp

#Interfaz wlan1 sin cambios
auto wlan1
iface wlan1 inet dhcp

# Interfaz virtual
auto tap0
iface tap0 inet manual
  vde2-switch -t tap0

# Puente para los contenedores
auto br0
iface br0 inet static
  bridge-ports tap0
  address 10.0.0.1
  netmask 255.255.255.0
```

Después editamos el archivo de configuración del contenedor /var/lib/lxc/una-caja/config para añadir el parámetro link que nos conectará con la interfaz puente br0:

```
# Template used to create this container: /usr/share/lxc/templates/lxc-debian
# Parameters passed to the template:
# For additional config options, please look at lxc.container.conf(5)
lxc.network.type = veth
lxc.network.flags = up
lxc.network.link = br0
lxc.network.name = lxcnet0

lxc.network.hwaddr = 00:16:3e:57:2c:4d
lxc.rootfs = /var/lib/lxc/una-caja/rootfs

# Common configuration
lxc.include = /usr/share/lxc/config/debian.common.conf

# Container specific configuration
lxc.mount = /var/lib/lxc/una-caja/fstab
lxc.utsname = una-caja
lxc.arch = amd64
```

Finalmente vamos a comprobar que el puente funciona.

Antes de arrancar el contenedor tenemos lo siguiente:

![captura35](http://i.imgur.com/hP7WURT.png)

Y después de arrancar el contenedor vemos que está levantada:

![captura36](http://i.imgur.com/vB1nziL.png)

## Ejercicio 3.1 ##
**Crear y ejecutar un contenedor basado en Debian.**

Ejecutando el comando lxc-checkconfigure me faltaban los módulos de user namespaces y Cgroup memory controller.

Para solucionar el problema he tenido que actualizar mi versión del kernel desde la 3.6 a la 3.16

Ya lo hice para comprobar el puente en el paso anterior.

Para instalar una máquina basada en debian ejecutamos:

```
sudo lxc-create -t debian -n una-caja
```

Para ejecutar la caja usamos:

```
sudo lxc-start -n una-caja

```

Tenemos que usar el usuario y contraseña que nos dan al crear el contenedor. Luego podremos modifcarlo dentro.

## Ejercicio 3.2 ##
**Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro.**

Creamos el táper con:
```
$ sudo lxc-create -t fedora -n caja-fedora
```

Tarda un rato en descargar e instalar así que hay que ser paciente.
Una vez instalado nos da un mensaje:

![captura37](http://i.imgur.com/vyHAJjl.png)

Como podemos ver en el archivo temporal indicado tenemos la clave de root para entrar por primera vez. Luego podremos cambiarla con passwd.

Ya podemos entrar a nuestro táper Fedora ejecutando:

```
sudo chroot /var/lib/lxc/caja-fedora/rootfs
```

Probamos una aplicación de Fedora, por ejemplo que el gestor de paquetes yum funciona:

![captura38](http://i.imgur.com/wBOxAJG.png)



## Ejercicio 4.1 ##
**Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.**

He instalado lxc-webpanel de la siguiente forma:

```
wget http://lxc-webpanel.github.io/tools/install.sh
chmod +x install.sh
sudo ./install.sh
```

De esta forma el script de instalación automática me instala todas las dependencias que hacen falta:

![captura39](http://i.imgur.com/DbTeYrj.png)

Al final de la instalación nos dice que podemos usar la aplicación web en el puerto 5000 del servidor.

Entramos introduciendo los credenciales por defecto: usuario: admin, contraseña: admin

![captura40](http://i.imgur.com/oL5LDn2.png)

Como podemos ver el panel nos muestra el uso de CPU, memoria y almacenamiento del sistema anfitrión,  diferentes opciones como inciar las máquinas, asignarles recurosos, habilitar puentes de red, etc.

Los contenedores que tenemos instalados nos aparecen en el menú de la izquierda y podremos seleccionarlos para editar su configuración. Abajo podremos arrancarlos y pararlos como se ve a continuación.

Arrancamos un contenedor dándole a Start, veremos que ahora se pone en estado 'Running':

![captura41](http://i.imgur.com/vSNYf1r.png)



## Ejercicio 4.2 ##
**Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.**

En el panel de administración del contenedor podremos modificar estos parámetros y restringir su uso. En mi caso he puesto que solo pueda utilizar 2 núcleos (0 y 1) y bajarle el tope de memoria y memoria de intercambio que puede utilizar.

![captura42](http://i.imgur.com/h9ZTgw6.png)

## Ejercicio 5 ##
**Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.**

Debido a muchos problemas con lxc en Debian, mi sistema operativo host (imposible asignar bridge, lxc webpanel se cuelga, etc) y mucha, pero mucha, pérdida de tiempo voy a instalar las cajas en una máquina virtual de Ubuntu (será el que haga de host para este ejercicio y los que tengan que ver con cajas).

He instalado nginx en el contenedor y en la jaula, ambas con el mismo sistema operativo (Ubuntu) instalado:

```
sudo apt-get install nginx
```

Inciamos el servicio:

``` 
sudo service nginx start
```

Después he instalado también apache2-utils en el host para hacer pruebas.

Comprobamos que efectivamente nginx está funcionando en ambos sistemas:

![caputura53](http://i.imgur.com/oYygabi.png)

Ahora vamos a realizar tests con apache benchmark. Para que los tests sean fiables debemos repetir varias pruebas y evauluar una media y desviación típica.

Para los tests usaré la orden  ab -n 300000 -c 10 http://<ip del servidor\>/ de manera automática haciendo un script como este:

```
#!/bin/bash

for i in {1..10}
do
	echo "----------------" >> tests.txt
	echo "PRUEBA $i" >> tests.txt
	echo "----------------" >> tests.txt
	ab -n 300000 -c 10 http://10.0.3.110/ >> tests.txt
done
```

Resultados de los tests:


|             |                      |         jaula           |                                |                      |       contenedor        |                                |
|:-----------:|:--------------------:|:-----------------------:|:------------------------------:|:--------------------:|:-----------------------:|:------------------------------:|
|             | Tiempo ejecución (s) | Solicitudes por segundo | Velocidad transferencia (KB/s) | Tiempo ejecución (s) | Solicitudes por segundo | Velocidad transferencia (KB/s) |
|   Prueba 1  |        43,556        |         6887,74         |             5737,54            |        57,506        |         5216,86         |             4345,69            |
|   Prueba 2  |        43,227        |         6940,16         |             5781,21            |        60,859        |         4929,40         |             4106,23            |
|   Prueba 3  |        42,694        |         7026,78         |             5853,36            |        55,877        |         5368,95         |             4472,37            |
|   Prueba 4  |        44,093        |         6803,78         |             5667,60            |        54,853        |         5469,12         |             4555,82            |
|   Prueba 5  |        45,075        |         6655,64         |             5544,20            |        53,499        |         5607,57         |             4671,15            |
|   Prueba 6  |        43,839        |         6843,15         |             5700,40            |        55,122        |         5442,42         |             4533,58            |
|   Prueba 7  |        45,513        |         6591,49         |             5490,76            |        54,176        |         5537,49         |             4612,77            |
|   Prueba 8  |        46,804        |         6409,75         |             5339,37            |        59,756        |         5020,45         |             4182,07            |
|   Prueba 9  |        46,360        |         6471,15         |             5390,52            |        54,107        |         5544,52         |             4618,63            |
|  Prueba 10  |        41,541        |         7221,83         |             6015,84            |        63,368        |         4734,26         |             3943,68            |
|             |                      |                         |                                |                      |                         |                                |
|    Media    |         44,2702      |         6785,147        |            5652,08             |        56,9123       |         5287,104        |            4404,199            |
| Desviación  |         5,723        |         254,107         |            211,673             |         3,353        |         299,116         |            249,165             |


Obtiene mejores tiempos de respuesta la jaula (más de 10 segundos de diferencia), trata más solicitudes por segundo y su velocidad de transferencia es mayor. Podemos concluir claramente con que la jaula ofrece un rendimiento superior al contenedor en todos los aspectos.

## Ejercicio 6.1 ##
**Instalar juju.**

He instalado juju desde mi máquina virtual de ubuntu para evitar catástrofes nucleares en mi sistema anfitrión como sigue:

![captura44](http://i.imgur.com/hkvkZL0.png)

He editado el archivo nano ~/.juju/environments.yaml para añadir la configuración local:

![captura45](http://i.imgur.com/3Ptd8Ng.png)

Después he instalado mongodb y al intentar crear un táper con juju me advierte de que falta un paquete por instalar:

![captura46](http://i.imgur.com/j8e5x30.png)

Lo instalamos tal y como el mismo programa nos dice que debemos hacer:

```
sudo apt-get install juju-local
```

Ahora podremos crear un táper con

```
juju bootstrap
```

## Ejercicio 6.2 ##
**Usándolo, instalar MySQL en un táper.**

Para instalar MySQL usamos el encanto mysql:

```
juju deploy mysql
```

He seguido los pasos de los [apuntes](http://jj.github.io/IV/documentos/temas/Contenedores#configurando-las-aplicaciones-en-un-tper) para instalar juju y configurarlo, por lo que además ya tengo instalado también mediawiki. Por lo que mi configuración actual es esta:

![captura47](http://i.imgur.com/t2gBaiD.png)

# Ejercicio 7.1 ##
**Destruir toda la configuración creada anteriormente**

Para destruir toda la configuración tendremos que destruir...

Unidades:

```
sudo juju destroy-unit mysql/0
sudo juju destroy-unit mediawiki/0
```

Relaciones:

```
sudo juju remove-relation mediawiki:db mysql:db
```

Máquinas:

```
sudo juju destroy-machine 2
sudo juju destroy-machine 1
```

Servicios:

```
juju remove-service mediawiki
```

Finalmente veremos que tenemos el estado con sólo la máquina 0:

![captura48](http://i.imgur.com/YZXT8A7.png)

## Ejercicio 7.2 ##
**Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.**

Ahora voy a repetir los pasos que hice antes para añadir mediawiki, mysql y la relación entre ellos.

![captura49](http://i.imgur.com/SuO4ShD.png)

Las máquinas ahora tienen los números 3 y 4 siguiendo el orden de las anteriores aunque las hayamos destruido.
Esta sería la configuración que finalmente nos queda:

![captura50](http://i.imgur.com/oe3go0V.png)

![captura51](http://i.imgur.com/v38P4RP.png)

Tendremos ya el entorno con mediawiki funcionando al que podremos acceder introduciendo la ip de la máquina:

![captura52](http://i.imgur.com/wSWDDtq.png)


## Ejercicio 7.3 ##
**Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.**

Con este script podremos desplegar mediawiki en sistemas ubuntu con una sola orden:

```
#!/bin/bash

# Script para configurar automaticamente juju con mysql y mediawiki

# Instalar software necesario
sudo add-apt-repository ppa:juju/stable
sudo apt-get update && sudo apt-get install juju-core && sudo apt-get install juju-local
# Editar el archivo de configuración para añadir entorno local
perl -pi -e 's/default:\ amazon/#default:\ amazon\ndefault:\ local/g' ~/.juju/environments.yaml
# Inicializar el entorno de juju
juju init
# Seleccionar un entorno de trabajo local
juju switch local
# Crear el táper
juju bootstrap
# Desplegar mediawiki
juju deploy mediawiki
# Desplegar mysql
juju deploy mysql
# Crear la relación necesaria entre mediawiki y mysql
juju add-relation mediawiki:db mysql:db
# Publicar el acceso a mediawiki
juju expose mediawiki
```

## Ejercicio 8 ##
**nstalar libvirt. Te puede ayudar esta guía para Ubuntu.**

Los pasos que he seguid para instalar libvirt son los siguientes:

Instalar kvm y libvirt-bin:
```
sudo apt-get install kvm libvirt-bin
```

Logearme como root y añadir a mi usuario al grupo libvirtd:
```
su
adduser julio libvirtd
exit
```

Instalar virtinst:

```
sudo apt-get install virtinst
```

## Ejercicio 9 ##
**Instalar un contenedor usando virt-install**

Voy a usar una iso con Fedora que tenía guardada para la instalación.

Para la instalación voy a usar el comando que podemos ver en esta [guía](https://help.ubuntu.com/12.04/serverguide/libvirt.html)

Los parámetros que incluye son:

* -n virt-ubuntu: el nombre de la máquina virtual.
* -r 512: la cantidad de memoria RAM en MB que usará la máquina virtual.
* --disk path=/var/lib/libvirt/images/ubuntu-libvirt.img,bus=virtio,size=8: la ruta en la que se almacenará el disco virtual del sistema, el bus que usará dicho disco y el tamaño en GB del mismo.
* -c ubuntu1310server64.iso: la ISO que vamos a instalar en el sistema.
* --accelerate": activa la tecnología de aceleración del kernel.
* --network network=default,model=virtio: el interfaz y modelo de red para la máquina virtual
* --connect=qemu:///system: el hipervisor
* --vnc: exporta la consola virtual del huésped usando VNC.


Procedemos a la instalación:

![captura54](http://i.imgur.com/ywvnEXX.png)

Ahora ejecutando virt-manager podremos gestionar las máquinas desde interfaz gráfica de forma más cómoda:

![captura55](http://i.imgur.com/eBeGsia.png)

Finalmente si abrimos la máquina podremos instalar Fedora desde entorno gráfico:

![captura56](http://i.imgur.com/ap2R81N.png)


## Ejercicio 10 ##
**Instalar docker**  

Para instalar Docker en Debian he seguido esta [guía](https://docs.docker.com/installation/debian/#debian-jessie-8-64-bit)

Instalo con la orden:

```
sudo apt-get install docker.io
```
Y comprobamos que funciona como es debido:

![captura57](http://i.imgur.com/Z011V3p.png)


## Ejercicio 11.1 ##
**Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.**

Con la orden docker pull podemos descargar la imagen que necesitemos como CentOS:

![captura58](http://i.imgur.com/OTL0BCZ.png)

Podemos ver muchas otras imágenes con software preinstalado para desplegar un servicio concreto en [docker hub registry](https://registry.hub.docker.com/)

# Ejercicio 11.2 ##
**Buscar e instalar una imagen que incluya MongoDB**

Esta es la imagen oficial de docker para MongoDB: [mongo](https://registry.hub.docker.com/_/mongo/)

La instalamos con sudo docker pull mongo:

![captura59](http://i.imgur.com/E6bJeLC.png)

Finalmente comprobamos las imagenes que hemos instalado:

![captura60](http://i.imgur.com/6zTPk0j.png)

## Ejercicio 12 ##
**Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.**

Me he creado una cuenta en Docker usando la de github:

![captura61](http://i.imgur.com/Z4tzUzO.png)

Creamos un repositorio donde guardemos la imagen:

![captura62](http://i.imgur.com/QPCu8c7.png)

He usado la imagen de ubuntu para instalar nginx en ella:

```
sudo docker run -i -t ubuntu /bin/bash
```
Una vez dentro del contenedor creamos un usuario:

![captura63](http://i.imgur.com/xJh3Kkc.png)

Instalamos nginx:

```
sudo apt-get install nginx
```


## Ejercicio 13 ##
**Crear a partir del contenedor anterior una imagen persistente con commit.**

Creamos una nueva imagen usando commit con nginx instalado y la subimos al repositorio de docker usando push:

![captura64](http://i.imgur.com/oyVNgKr.png)

NOTA: Para obtener el id del contenedor al que vamos a hacer commit debemos dejarlo ejecutando en otra terminal y ejecutar "sudo docker ps", de otro modo no se efectuarán los cambios en el contenedor.

Vamos a comprobar que la imagen está disponible en el registro de docker y funcionando. Para ello primero vamos a borrar el contenedor de nginx y su imagen correspondiente:

![captura65](http://i.imgur.com/ua6nO6m.png)

Ahora mismo no hay rastro de nuestra imagen. Hacemos un pull y la ejecutamos:

![captura66](http://i.imgur.com/H9tArMT.png)

Ya está funcionando nuestro contenedor con nginx instalado.

## Ejercicio 14 ##
**Crear una imagen con las herramientas necesarias para el proyecto de la asignatura sobre un sistema operativo de tu elección.**


Para esto he utilizado el script que hicimos para la práctica 3 que instala todas las dependencias.

Partimos de la imagen de Ubuntu:

sudo docker run 

Dentro del contenedor instalamos wget, descargamos y ejecutamos el script que instala las dependencias:

```
apt-get install wget
wget https://raw.githubusercontent.com/julioxus/iv-aerospace/master/Hito3/install.sh
chmod +x install.sh
./install.sh
```

Cuando termine el script tendremos todo instalado. Abrimos otra terminal y hacemos commit para salvar los cambios:

![captura67](http://i.imgur.com/PmHO16Q.png) 
