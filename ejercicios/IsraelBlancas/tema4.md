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


**Resultados con el jaula**:

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


**Resultados con la contenedor**:

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


Como se puede ver, la jaula es más rápida (sirve más peticiones) que el contenedor. Esto es debido a que el contenedor tiene que acceder a través del puente (el que se crea cuando se instala).



***

##Ejercicio 6##

#####1. Instalar juju.#####
#####2. Usándolo, instalar MySQL en un táper.#####

He instalado "juju" siguiendo las instrucciones de la sesión. Para listar los contenedores, es encesario hacerlo como "sudo", es decir, ejecutar "sudo lxc-ls".

![Listando contenedores](http://fotos.subefotos.com/25f3e0124d47738e6c48c5646b244685o.jpg)

*Tengo dos contenedores del tipo "iblancasa-local-machine" por que, al no listarse los contenedores utilizando solo lxc-ls, pensaba que no había hecho alguna parte bien y repetí los pasos*.


Después, he procedido a instalar en el contenedor "MySQL" y "Mediawiki". He obtenido el siguiente error al realizar la relación:

`error: ambiguous relation: "mediawiki mysql" could refer to "mediawiki:db mysql:db"; "mediawiki:slave mysql:db"`

que he solucionado utilizando [este enlace](https://juju.ubuntu.com/docs/charms-relations.html) (que ya he añadido al documento de la sesión), ejecutando:

`juju add-relation mediawiki:db mysql`



***

##Ejercicio 7##

#####1. Destruir toda la configuración creada anteriormente#####
#####2. Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.#####
#####3. Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.#####

Para destruir la configuración realizada, he tenido que ejecutar los siguientes comandos:

```
  juju destroy-service mysql
  juju destroy-service mediawiki
  sudo juju destroy-environment local
```

Al tratar de comprobar si la configuración ha sido borrada correctamente, se obtiene este mensaje:

![Mensaje juju](http://fotos.subefotos.com/869d8bec8a570c1596b7e4203c6acdbao.jpg)

He vuelto a ejecutar todos los pasos:

```
juju bootstrap
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki:db mysql
juju expose mediawiki
```

Y mediante `juju status` compruebo que todo funcione adecuadamente.

El script para aplicar la configuración es el siguiente:

```bash
juju switch local
sudo juju bootstrap
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki:db mysql
juju expose mediawiki
echo "Finalizado correctamente"
```



***

##Ejercicio 8##

#####Instalar libvirt. Te puede ayudar esta guía para Ubuntu.#####

He ejecutado el siguiente comando:

```
sudo apt-get install kvm libvirt-bin virtinst
```

Tras esto, he comprobado que sea compatible, ejecutando el comando `` kvm-ok``, que devolverá un mensaje que indica que este tipod de aceleración se puede usar:

```
INFO: /dev/kvm exists
KVM acceleration can be used
```

Y he comprobado que pueda ejecutar ``virsh``

![virsh](http://fotos.subefotos.com/6cdcc42957b4579c251804cf397b7127o.jpg)



***

##Ejercicio 9##

#####Instalar un contenedor usando virt-install.#####

Instalamos "virt-viewer" para poder acceder a la interfaz gráfica usando ``sudo apt-get install virt-viewer``. Después, descargamos la imagen de instalación de, por ejemplo, alguna distribución Linux. Yo he optado por "Puppy Linux". Y ejecutamos el comando para la creación del contenedor (indicando nombre, tamaño de ram, dónde queremos que se guarde, ruta a la imagen...)

```
sudo virt-install -n virt-puppylinux -r 512 --disk path=/var/lib/libvirt/images/puppy.img,bus=virtio,size=5 -c tahr-6.0-CE_PAE.iso --accelerate --network network=default,model=virtio --connect=qemu:///system --vnc --noautoconsole -v
```

Una vez que comience la instalación, se nos indicará que podremos seguir la instalación desde la interfaz. Para ello ejecutamos:

``sudo virt-viewer -c qemu:///system virt-puppylinux``

![PuppyLinux](http://fotos.subefotos.com/f0e3048019315b0587c2b204170e2f5bo.jpg)

Cuando queramos parar la máquina, listaremos las máquinas que tenemos ``virsh list`` y lo paramos de la siguiente forma:

``sudo virsh shutdown virt-puppylinux``



***

##Ejercicio 10##

#####Instalar docker.#####

He intentado instalar "Docker" utilizando el tutorial de la [página web de docker](http://docs.docker.com/installation/ubuntulinux/#ubuntu-trusty-1404-lts-64-bit):

+ Instalamos ``sudo apt-get install docker.io`` y ejecutamos ``source /etc/bash_completion.d/docker.io`` (para no tener problemas en el futuro, puede venir bien añadir esta instrucción al fichero ".bashrc", situado en "home/tuusuario")
+ Instalamos ``sudo apt-get install apt-transport-https``.
+ Añadimos la llave del repositorio de Docker: ``sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9``
+ Ejecutamos ``sudo sh -c "echo deb https://get.docker.com/ubuntu docker main\ /etc/apt/sources.list.d/docker.list"`` para añadir el repositorio
+ Actualizamos los repositorios e instalamos con ``sudo apt-get update`` y ``sudo apt-get install lxc-docker``

Como no me ha funcionado (no se encontraba el paquete y también obtenía errores con el otro método de instalación), seguí [este tutorial](http://www.liquidweb.com/kb/how-to-install-docker-on-ubuntu-14-04-lts/)

Una vez instalado, ejecutamos ``sudo rm /var/run/docker.pid`` para evitar problemas en la ejecución y ejecutamos con ``sudo docker -d &``

![docker](http://fotos.subefotos.com/62f9afeb95de844c737c1fef9050af3co.jpg)



***

##Ejercicio 11##

#####1. Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.#####
#####2. Buscar e instalar una imagen que incluya MongoDB.#####

Después de haber instalado una imagen de Ubuntu (``sudo docker pull ubuntu``), hacemos lo mismo con CentOS ``sudo docker pull centos``

Una imagen que incluye MongoDB, se llama "dockerfile/mongodb" (contiene una imagen Ubuntu con MongoDB). Se instala con ``docker pull dockerfile/mongodb``

Ejemplo de ejecución del comando ``ls`` en el contenedor CentOS

![ls en CentOS con Docker](http://fotos.subefotos.com/14285ef04b10df35b54ba769e03b158ao.jpg)



***

##Ejercicio 12##

#####Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.#####

+ Entramos al contenedor ``sudo docker run -i -t ubuntu /bin/bash``
+ Añadimos el nuevo usuario ``useradd -d /home/usuarionginx -m usuarionginx``
+ Damos al usuario la posibilidad de ejecutar como "sudo" ``adduser usuarionginx sudo``
+ Establecemos contraseña ``passwd usuarionginx``
+ Entramos como el usuario mediante ``su usuarionginx``
+ Actualizamos los repositorios e instalamos nginx ``sudo apt-get update && sudo apt-get install nginx``
+ Iniciamos el servicio ``sudo service nginx start``

![Iniciando nginx desde Docker](http://fotos.subefotos.com/4b3fa5bb57c9c72296ed19247b2ef459o.jpg)

*No sé por qué, pero no obtengo respuesta (un mensaje diciendo que ha funcionado o fallado) cuando lo inicio. Si lo reinicio, podemos ver que da como salida un OK.



***

##Ejercicio 13##

#####Crear a partir del contenedor anterior una imagen persistente con commit.#####

Manteniendo el contenedor en funcionamiento (ya sea teniendo la terminal abierta -la creada unos pasos antes- o enviando un nuevo trabajo), listamos los dockers con ``sudo docker ps`` y guardamos la ID (en mi caso "5c1240db1a0d").
Escribimos ``sudo docker commit 5c1240db1a0d nombrenuevo`` y el resultado será una ID (en mi caso "28c35574d38ca22060b7c459684ec5131158d1d293bf60488bbfacb308471f5a").

Al ejecutar ``sudo docker images``, veremos que la última es la que hemos creado.

![Docker](http://fotos.subefotos.com/e616550e6d3b3c8702425543671297b4o.jpg)
