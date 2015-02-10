##4.Virtualización ligera usando contenedores

###Ejercicio 1: 
####Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.

Instalamos mediante la orden:
`sudo apt-get install lxc`

<img src="http://i61.tinypic.com/21n2l2v.png"></img>

Y comprobamos que este todo correcto mediante la orden:

`lxc-checkconfig`

###Ejercicio 2: 
####Comprobar qué interfaces puente se han creado y explicarlos.

Hacemos:
`brctl show`

<img src="http://i60.tinypic.com/2edmn7o.png"></img>



###Ejercicio 3: 
####Crear y ejecutar un contenedor basado en Debian.
####Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, [Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.](https://github.com/IV-GII/GII-2013/issues/87#issuecomment-28639976)

Para crear el contenedor hacemos:

`sudo lxc-create -t debian -n debianContenedor`

Y para ejecutarlo:

`sudo lxc-start -n debianContenedor`

En otra distribución:

`sudo lxc-create -t centos -n centoContenedor`

y para ejecutarlo:

`sudo lxc-start -n centoContenedor`

###Ejercicio 4: 
####Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.
####Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.

Lo he instalado con el comando: 

`wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash`

<img src="http://i62.tinypic.com/2ih9qme.png"></img>

y accedo a el entrando en el navegador en la direccion: http://localhost:5000/home

<img src="http://i60.tinypic.com/2nhesmw.png"></img>

y editamos los contenedores:

<img src="http://i62.tinypic.com/zoglk3.png"></img>


###Ejercicio 5: 
####Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.
 
 Antes de nada instalaremos Apache Benchmark haciendo: `sudo apt-get install apache2-utils`
 
 La jaula sera mas rapida que el contenedor ya que sirve mas peticiones. Esto sucede porque el contenedor lo hace a traves de un puente:
 
 <img src="http://i57.tinypic.com/29o0ugz.png"></img>

<img src="http://i61.tinypic.com/wmjtqu.png"></img>



###Ejercicio 6: 
####Instalar juju. Usándolo, instalar MySQL en un táper.

En primer lugar añado el repositorio:

`sudo add-apt-repository ppa:juju/stable`

 y actualizo:
`apt-get update`

y ahora si puedo instalar juju:

`apt-get install juju-core`

Sigo con las instrucciones de instalacion del guion. Al hacer `juju bootstrap` me da un error. Si funcionase correctamente hariamos:

```
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki mysql
juju expose mediawiki
```

###Ejercicio 7: 
####Destruir toda la configuración creada anteriormente. 
####Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos. 
####Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.

Para destruirla hacemos:

```
juju destroy-service mysql
juju destroy-service mediawiki
sudo juju destroy-environment local
```

Para crearla de nuevo con mediawiki:
```
juju bootstrap
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki:db mysql
juju expose mediawiki
```

Para comprobar que no ha habido fallos hacemos `juju status`
El script que haga todo esto es:

```
juju switch local
sudo juju bootstrap
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki:db mysql
juju expose mediawiki
echo "Finalizado sin fallos"
```

###Ejercicio 8:
####Instalar libvirt. Te puede ayudar esta guía para Ubuntu. 

Para instalarlo hacemos:

`sudo apt-get install kvm libvirt-bin virtinst`

Y comprobamos que se puede hacer `virsh`:

<img src="http://i58.tinypic.com/mm78lj.png"></img>

###Ejercicio 9:
####Instalar un contenedor usando virt-install.

En primer lugar instalamos mediante:

`sudo apt-get install virtinst`

En un principio me decante por Xubuntu pero ya que pesaba cerca de 1Gb, finalmente me baje la de Puppy Linux ya que pesa mucho menos [Distribuciones ligeras Linux](http://bitelia.com/2014/01/distribuciones-ligeras-linux)

Para la creacion del contenedor hacemos:

`sudo virt-install -n puppylinux -r 512 --disk path=/var/lib/libvirt/images/puppy.img,bus=virtio,size=3 -c slacko-5.7-NO-pae.iso --accelerate --network network=default,model=virtio --connect=qemu:///system --vnc --noautoconsole -v`

<img src="http://i61.tinypic.com/8x3ll2.png"></img>

Ahora instalo virt-viewer: `sudo apt-get install virt-viewer`

Y hago:
`sudo virt-viewer -c qemu:///system virt-puppylinux`

<img src="http://i61.tinypic.com/28cj3ft.png"></img>



###Ejercicio 10: 
####Instalar docker.

En primer lugar debemos instalar curl:

`sudo apt-get install curl`

 Añadimos la llave del repositorio Docker a nuestra keychain local:
`sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9`

Instalamos y actualizamos lxc-docker:
```
sudo sh -c "echo deb https://get.docker.com/ubuntu docker main/etc/apt/sources.list.d/docker.list"
sudo apt-get update
udo apt-get install lxc-docker
```

Ahora gracias al script que nos faciliza la instalacion, lo ejecutaremos mediante:

`curl -sSL https://get.docker.io/ubuntu/ | sudo sh`

<img src="http://i62.tinypic.com/e80377.png"></img>

Y para comprobar que todo fue bien:

`sudo docker run -i -t ubuntu /bin/bash`


###Ejercicio 11: 
####Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.
####Buscar e instalar una imagen que incluya MongoDB.

He instalado una imagen de Ubuntu `sudo docker pull ubuntu`. Del mismo modo con CentOS `sudo docker pull centos`

Instalamos una imagen que incluya MongoDB mediante:

`docker pull dockerfile/mongodb`

###Ejercicio 12: 
####Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.


En primer luygar accedemos al contenedor con `sudo docker run -i -t ubuntu /bin/bash` y 
añadimos un nuevo usuario con `useradd -d /home/ppruiz -m ppruiz`.
Incluimos la posibilidad de acceder con "sudo" `adduser ppruiz sudo`.
Accedemos con nuestro usuario creado `su ppruiz`.
Instalamos nginx `sudo apt-get install nginx`

Y finalmente lo iniciamos: " `sudo service nginx start`

Comprobamos que funciona correctamente:

<img src="http://i59.tinypic.com/15prgao.png"></img>


###Ejercicio 13: 
####Crear a partir del contenedor anterior una imagen persistente con commit. 

Para crear la imagen persistente con commit hacemos:

`sudo docker commit 5b5253bd3b2b imagencita`

Y genera: 
`5F1B612317F5725DC43A1E1A09A0291FB3684D98E110247425B35B1E97CF9FBECDC7AC6AFE195681E3357C916D7610CCAFC3AE0B156DF8D8984EAC9D054911B9`


###Ejercicio 14: 
####Crear una imagen con las herramientas necesarias para el proyecto de la asignatura sobre un sistema operativo de tu elección. 

(Pendiente de grupo)








