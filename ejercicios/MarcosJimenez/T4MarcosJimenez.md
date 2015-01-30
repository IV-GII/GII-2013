<h1> Marcos Jiménez Fernández </h1>

<h2> Tema 4 </h2>

<strong> Ejercicio 1: Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.</strong>

Para instalar LXC ejecutamos en nuestra terminal:
```
sudo apt-get install lxc lxc-templates
```

<strong> Ejercicio 2: Comprobar qué interfaces puente se han creado y explicarlos.</strong>

Para mostrar los interfaces web de nuestra máquina ejecutamos:
```
ifconfig -a
```
Nos fijamos en el último de todos:

<img src="http://i60.tinypic.com/2w2pjj9.png"></img>

El interfaz lxcbr0 es el que se ha creado con la instalación de LXC y sirve para permitir al container tener acceso a la red.

<strong> Ejercicio 3:<br>
1.Crear y ejecutar un contenedor basado en Debian.</strong><br>

Creamos el contenedor LXC con el siguiente comando:
```
sudo lxc-create -t debian -n ubuntu
```
Vemos que ha quedado instalado:

<img src="http://i57.tinypic.com/ic011g.png"></img>

Una vez que se haya instalado, lo arrancamos:
```
sudo lxc-start -n ubuntu
```
Usuario: root
Contraseña: root

<img src="http://i61.tinypic.com/2r7bic1.png"></img>

<strong>2.Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue. </strong>

Como estoy usando Ubuntu 14.04, voy a probar a instalar la distribución de CentOS. Pero hay que tener cuidado, ya que en CentOS se usa yum para instalar en vez de apt-get. Por tanto lo instalamos:
```
sudo apt-get install yum
```
A continuación creamos nuestra distribución de CentOS con LXC:
```
sudo lxc-create -t centos -n centos
```
<img src="http://i59.tinypic.com/2d28ufs.png"></img>

Al igual que antes, para arrancarla ejecutamos:
```
sudo lxc-start -n centos
```
<img src="http://i59.tinypic.com/1zzpely.png"></img>

<strong> Ejercicio 4:<br>
1.Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.</strong><br>

Para instalar lxc-webpanel hacemos lo siguiente:
```
sudo wget http://lxc-webpanel.github.io/tools/install.sh -O - | sudo bash
```
<img src="http://i60.tinypic.com/2j3635x.png"></img>

<strong>2. Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.</strong>

Entrando en un navegador nos vamos a la dirección siguiente:
```
http://localhost:5000/
```
En el panel de logueo que nos sale escribimos 'admin' como nombre de usuario y 'admin' como contraseña. Al entrar nos aparece esta pantalla:

<img src="http://i61.tinypic.com/dpwt8x.png"></img>

Pinchando en nuestra máquina de CentOS accedemos a las opciones donde podemos limitar los recursos, como se ve en la imagen:

<img src="http://i60.tinypic.com/29oraf7.png"></img>

<strong> Ejercicio 5: Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.</string>

<strong> Ejercicio 6:<br>
1. Instalar juju.</strong><br>

Para instalar juju ejecutamos:
```
sudo add-apt-repository ppa:juju/stable
sudo apt-get update && sudo apt-get install juju-core
```
<img src="http://i58.tinypic.com/16s6ck.png"></img>

<strong>2. Usándolo, instalar MySQL en un táper.</strong>

En primer lugar lo arrancamos:
```
juju init
juju bootstrap
```
Y lo instalamos:
```
juju deploy mediawiki
juju deploy mysql
```
Por último establecemos mysql como la BD que va a usar mediawiki añadiendo una relación:
```
juju add-relation mediawiki:db mysql
```

<strong> Ejercicio 7:<br>
1. Destruir toda la configuración creada anteriormente.</strong><br>

Vamos a destruir toda la configuración relativa a juju:
```
juju destroy-service mysql 
juju destroy-service mediawiki 
sudo juju destroy-environment local
```
<strong>2. Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.</strong><br>

Para ello ejecutamos lo siguiente:
```
juju deploy mediawiki 
juju deploy msql 
juju add-relation mediawiki msql 
juju expose mediawiki
```
<strong>3. Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.</strong>

El script es el siguiente:
```
juju switch local

sudo juju bootstrap
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki:db mysql

juju expose mediawiki
```
<strong> Ejercicio 8: Instalar libvirt. Te puede ayudar esta guía para Ubuntu.</strong>

<strong> Ejercicio 9: Instalar un contenedor usando virt-install.</strong>

<strong> Ejercicio 10: Instalar docker.</strong>

<strong> Ejercicio 11:<br>
1. Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.<br>
2. Buscar e instalar una imagen que incluya MongoDB.</strong>

<strong> Ejercicio 12: Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.</strong>

<strong> Ejercicio 13: Crear a partir del contenedor anterior una imagen persistente con commit.</strong>

<strong> Ejercicio 14: Crear una imagen con las herramientas necesarias para el proyecto de la asignatura sobre un sistema operativo de tu elección.</strong>

