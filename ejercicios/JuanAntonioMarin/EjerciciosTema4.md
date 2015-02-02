##Tema 4:

###Ejercicio 1:

Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.

Instalamos lxc con:

````sudo apt-get install lxc````

<img src="http://i57.tinypic.com/28as5di.jpg"/>

Para comprobar la versión:

```` lxc-checkconfig ````


<img src="http://i60.tinypic.com/69dizm.jpg"/>

###Ejercicio 2:

Comprobar qué interfaces puente se han creado y explicarlos.

Para ver los interfaces puentes se usa el comando:

````sudo brctl show````

<img src="http://i59.tinypic.com/28u1suu.jpg"/>

Dado que he usado una nueva imagen de ubuntu ya que la tenia demasiado sucia la anterior, solo muestra el lxcbr0 del programa lxc.

###Ejercicio 3:

1. Crear y ejecutar un contenedor basado en Debian.

Primero creamos el contenedor con:

````sudo lxc-create -t debian -n caja-debian````

Arrancamos el contenedor:

````sudo lxc-start -n caja-debian````

<img src="http://i62.tinypic.com/3340wsk.jpg"/>

2. Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.

Para ver los templates que tenemos ponemos el comando:

````ls /usr/lib/lxc/templates/````

OpenSuse me pide zypper, y los demas tambien me dan errores asi que voy a usar el script del Gentoo, le damos permisos de ejecucion y lo pasamos a la carpeta de templates (Hay que configurar tambien el archivo config del lxc)

````sudo lxc-create -t gentoo -n caja-gentoo````

Y para ejecutar como siempre:

````sudo lxc-start -n caja-gentoo````

Al final he instalado debian y busybox.

###Ejercicio 4:

1. Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.

Estando como root ejecuto lo siguiente:

````wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash````

<img src="http://i57.tinypic.com/4t9jdv.jpg"/>

En el navegador ponemos localhost:5000 y nos pide usuario y contraseña: admin admin

<img src="http://i59.tinypic.com/2qbx0u8.jpg"/>

2. Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.

<img src="http://i59.tinypic.com/2ur0cn4.jpg"/>

###Ejercicio 5:

En la imagen de la asignatura de redes ya estan instalados los paquetes de Apache y por tanto viene dada el apache benchmark, como he dicho anteriormente cambie la imagen y no tengo la jaula pero voy a hacer una prueba al contenedor (aunque esta claro que la jaula es mas rapida que el contenedor ya que no tiene que puentear la IP)

<img src="http://i62.tinypic.com/2djotwh.jpg"/>

<img src="http://i62.tinypic.com/2isbbro.jpg"/>

###Ejercicio 6:

Primero añadimos al repositorio para que localice juju:

```` 
sudo add-apt-repository ppa:juju/stable
sudo apt-get update
sudo apt-get install juju-core
````

Una vez añadido:

Editamos el archivo enviroments.yaml
Instalamos juju-local

````
sudo apt-get install juju-local
````
Ahora ya podemos usar los comandos:

````
juju bootstrap
````

Esto me provoca un error, por lo que voy a poner los comandos necesarios en caso de que todo funcionase correctamente.

````
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki mysql
juju expose mediawiki
````

###Ejercicio 7:

Como no he conseguido instalar juju lo hago teoricamente.

1. Destruir toda la configuración creada anteriormente:

````
juju destroy-service mysql
juju destroy-service mediawiki
sudo juju destroy-environment local
````

2. Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos:

````
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki mysql
juju expose mediawiki
````


3. Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta:

Script.sh
````
sudo juju switch local 
sudo juju bootstrap 
sudo juju deploy mediawiki 
sudo juju deploy mysql 
sudo juju add-relation mediawiki:db mysql 
sudo juju expose mediawiki
````

###Ejercicio 8:

Instalar libvirt. Te puede ayudar esta guía para Ubuntu.

Primero instalamos libvirt:

````sudo apt-get install kvm libvirt-bin````

Para añadir un usuario:

````sudo add $USER libvirtd````

Y comprobar la instalacion kvm-ok pero mi procesador no lo soporta...

<img src="http://i59.tinypic.com/ml4ew2.jpg"/>

Utilizo:
```` virsh ````

<img src="http://i60.tinypic.com/qx494i.jpg"/>

###Ejercicio 9:

Primero instalo mediante:

````sudo apt-get install virtinst````

Ahora busco una distribucion muy ligera:

http://www.redeszone.net/2013/02/24/las-10-distribuciones-linux-mas-ligeras-que-existen/

Y me bajo la iso de tinyCore que ocupa 72 megas la CorePlus

````
sudo virt-install -n coreplus -r 512 --disk path=/var/lib/libvirt/images/coreplus.img,bus=virtio,size=2 -c CorePlus-current.iso --accelerate --network network=default,model=virtio --connect=qemu:///system --vnc --noautoconsole -v
````

Para inicializarlo:

````
virsh -c qemu:///system start coreplus
````

<img src="http://i60.tinypic.com/118fukk.jpg"/>

Ahora instalamos el virt-viewer y ejecutamos: 

````
sudo apt-get install virt-viewer
sudo virt-viewer -c qemu:///system coreplus
````

Como es una version directa no es bootable, por lo que no serviria esta version de linux pero el procedimiento es correcto:

<img src="http://i61.tinypic.com/25gexiq.jpg"/>

###Ejercicio 10:

Instalar docker. (Sacado de https://docs.docker.com/installation/ubuntulinux/)

Primeor instalo curl para ejecutar el script:

````sudo apt-get install curl````

Añadir el docker al repositorio:

````sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9````

````
sudo sh -c "echo deb http://get.docker.com/ubuntu docker main\ > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install lxc-docker
````

Despues ejecuto el script:

````curl -sSL https://get.docker.io/ubuntu/ | sudo sh````

Y finalmente ejecuto:

````sudo docker run -i -t ubuntu /bin/bash````

###Ejercicio 11:

1. Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.

````sudo docker pull centos````

2. Buscar e instalar una imagen que incluya MongoDB.

Hay una imagen de ubuntu con el mongodb:

````docker pull dockerfile/mongodb````


###Ejercicio 12:

Primero ejecutamos el contenedor: 

````sudo docker run -i -t ubuntu /bin/bash````

Añadimos un usuario 

````useradd -d /home/JAntonioMarin -m JAntonioMarin````

Añadimos un usuario administrador: 

````adduser JAntonioMarin sudo````

Cambiamos la contraseña ;)

Login del usuario: su JAntonioMarin

Instalamos nginx:  

````sudo apt-get install nginx````

Iniciamos el servicio nginx 

````sudo service nginx start````

Probamos en el navegador que funciona correctamente:

<img src="http://i59.tinypic.com/29vdmco.jpg"/>

###Ejercicio 13:

Simplemente creamos la imagen (En mi caso):

````sudo docker commit 3ce27c44a558 ubuntuFinal````

Generandome:

```` 9255250FE496A44BA43E64BD5049CD0D1C1569C6DE943C4FE6CF90E1AE8E5E7F5A5380F02EDAF766A098BD642B7ABFB60757C0A361125E1D1B5D1CD30B32736C ```` 

Y comprobamos las imagenes con:


````sudo docker images````


###Ejercicio 14: 

Crear una imagen con las herramientas necesarias para el proyecto de la asignatura sobre un sistema operativo de tu elección.

Pendiente de la creación con el grupo, ya que se necesitan mas herramientas que aun no tenemos decididas.





