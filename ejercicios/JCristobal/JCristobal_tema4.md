#Ejercicios de JCristobal (José Cristóbal López Zafra)

# Tema 4

[Enlace al tema](http://jj.github.io/IV/documentos/temas/Contenedores)


##Ejercicio 1
###Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.

Primero nos descargamos la última versión de Github:
`git clone https://github.com/lxc/lxc`

y en la carpeta de LXC ejecutamos `./autogen.sh && ./configure && make && sudo make install`

Puede dar problemas si no tenemos instalado autoconf, que instalamos con `sudo apt-get install autoconf`

Por último comprobamos si está preparado para usar este tipo de tecnología y también si se ha configurado correctamente con `lxc-checkconfig`
		
![imagen](http://i.imgur.com/HRgX8yc.png)

También se podría instalar simplemente con `sudo apt-get install lxc`, aunque con el método anterior nos aseguramos que instalamos la última versión.


##Ejercicio 2
###Comprobar qué interfaces puente se han creado y explicarlos.

La instalación anterior no me deja crear un contenedor e instalar ubuntu dentro, me da el siguiente error

"lxc-create: error while loading shared libraries: liblxc.so.1: cannot open shared object file: No such file or directory"

Lo soluciono gracias al [enlace que me proporciona el profesor](https://lists.linuxcontainers.org/pipermail/lxc-users/2014-January/006069.html)


Creo el contenedor con `sudo lxc-create -t ubuntu -n una-caja` y para arrancarlo `sudo lxc-start -n una-caja`


> Falla al arrancar, [aquí capturas al intentar arrancarlo, y al internar arrancarlo en foreground](http://i.imgur.com/ymzHosW.png)
> 
> Vemos que el fallo es un conflicto de permisos con CGROUP.
> 


Vuelvo a internarlo sobre un sistema Debian, monto cgroup, [instalo LXC](https://wiki.debian.org/LXC#Installation) y creo el contenedor siguiendo los mismo pasos que he comentado antes

[Contenedor recién creado](http://i.imgur.com/HvOMhV8.png) y lo arrancamos: ![arrancado](http://i.imgur.com/dhErc2R.png)


Con `sudo lxc-list` podemos ver el estado de los contenedores, paro el contenedor y lo ejecuto: [Estado de los contenedores](http://i.imgur.com/YwcvSSL.png)


Dentro del contenedor ejecutamos `ifconfig -a` para ver sus interfaces de red:

![imagen](http://i.imgur.com/SDVwA8Z.png)


Y fuera, con `brctl show` y el contenedor parado (`lxc-stop -n una-caja`) vemos que no tiene ninguna interfaz, aunque según los apuntes deberíamos haber encontrado lxcbr0 y veth.

Creo y asigno una nueva interfaz a la red cableada:

![imagen](http://i.imgur.com/mflfRii.png)




##Ejercicio 3
###Crear y ejecutar un contenedor basado en Debian.

Muestro los pantallazos de la actividad anterior, ya que instalo Debian, con el contenedor recién creado:

![Contenedor_recién_creado](http://i.imgur.com/HvOMhV8.png) y [arrancado](http://i.imgur.com/dhErc2R.png)


###Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. 


Usamos [el script](https://raw.githubusercontent.com/globalcitizen/lxc-gentoo/master/lxc-gentoo) del [comentario del issue de Óscar Zafra](https://github.com/IV-GII/GII-2013/issues/87#issuecomment-28639976): nos lo descargamos y lo metememos en /usr/share/lxc/templates/:

`sudo wget -P /usr/share/lxc/templates/ https://raw.github.com/globalcitizen/lxc-gentoo/master/lxc-gentoo`

y le damos permisos `chmod +x /usr/share/lxc/templates/lxc-gentoo`

Y creamos el contenedor: `/usr/share/lxc/templates/lxc-gentoo create`

![descargado_permisos_crear](http://i.imgur.com/wnOqH80.png)


Lo ejecutamos y lo arracancamos con el nombre que le hemos dado `lxc-start -f gentoo.conf -n gentoo`



Crearemos también otro contenedor con [Progress](https://www.progress.com/):

ejecuto `lxc-create -t progress -n pro` para crearlo:


![imagen](http://i.imgur.com/iKYY7Xj.png)

y lo ejecuto con `lxc-start -n pro`
 



##Ejercicio 4
###Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.


Consultamos la [web de LXC WebPanel](http://lxc-webpanel.github.io/install.html) para instalarlo y vemos que tenemos que ejecutar `wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash`:

[Instalandose](http://i.imgur.com/JQ2Mj9z.png)

Una vez instalado accedemos a http://your_ip_address:5000/ (localhost:5000) e introducimos usuario (admin) y contraseña (admin). Una vez dentro podemos visualizar las máquinas que tenemos instaladas:

![imagen](http://i.imgur.com/PpKaGqv.png)

Ahora podemos arrancar una máquina, pulsando simplemente en el botón de "Start":

![imagen](http://i.imgur.com/azZxjXt.png)

y pararla con el de "Stop"

![imagen](http://i.imgur.com/8egawv4.png)


###Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.

Accedemos a un contenedor (en estado "Stopped") y modificamos los parámetros, pulsamos "Apply" para acabar:

![imagen](http://i.imgur.com/BPkV7WO.png)

En mi caso modifico el límite de memoria y memoria total + memoria de intercambio a 512 y 1024 MB respectivamente. También cambio a 3 los procesadores que podrá usar la máquina y dejo igual el porcentaje de procesamientos que podrá usar.


##Ejercicio 5
###Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.

Primero accedemos a la jaula con `sudo chroot /home/jaulas/saucy/` y arrancamos nginx con `service nginx start`. Una vez hecho esto podemos ver la página visitamos http://127.0.0.1/ en nuestro navegador.

Arrancamos igual nginx en el contenedor y consultamos con `ifconf -a` qué página tenemos que consultar en el navegador, en mi caso http:/10.0.2.15/.

Y para comparar las prestaciones usaremos un ataque Apache Benchmark (fuera de la jaula y el contendor), y compararemos resultados: usaremos `ab -n 500000 -c 10 http://127.0.0.1/index.html` para la jaula y `ab -n 500000 -c 10 http://10.0.2.15/index.html` para el contenedor.

Repetimos el ataque y anotamos los tiempos, solicitudes por segundo, tiempo por respuesta y velocidad de transeferencia al realizar los test:


|                       | Tiempo (s) | solicitudes/segundo [#/sec] | tiempo por respuesta [ms]| velocidad de transeferencia [Kbytes/sec] |
| --------------------- | :--------: | :-------------------------: | :----------------------: | :-------------------------------------:  |
| Contenedor prueba 1   | 26.313     | 19001.70                    | 0.526                    | 6698.84                                  |
| Contenedor prueba 2   | 23.532     | 21247.82                    | 0.471                    | 7490.69                                  |
| Contenedor prueba 3   | 23.696     | 21100.41                    | 0.474                    | 7438.72                                  |
| Contenedor prueba 4   | 23.959     | 20869.29                    | 0.479                    | 7357.24                                  |
|                       |            |                             |                          |                                          |
| Jaula      prueba 1   |   19.050   | 26246.18                    | 0.381                    | 21632.59                                 |
| Jaula      prueba 2   |  18.771    | 26636.49                    | 0.375                    |21954.29                                  |
| Jaula      prueba 3   |   18.771   | 29308.97                    | 0.341                    | 24157.01                                 |
| Jaula      prueba 4   |   17.196   | 29076.06                    | 0.341                    | 23965.04                                 |


Y a continuación muestro las medias de los resultados obtenidos para ver mejor la comparación:

|       Medias          | Tiempo (s) | solicitudes/segundo [#/sec] | tiempo por respuesta [ms]| velocidad de transeferencia [Kbytes/sec] |
| --------------------- | :--------: | :-------------------------: | :----------------------: | :-------------------------------------:  |
| Contenedor            |   24,375   |       20554,805             |      0,4875              |     7246,3725                            |
| Jaula                 |   18,447   |       27816,925             |      0,3595              |    22927,2325                            |



Vemos que la jaula da mejores prestaciones, vemos que son cifras algo superiores, sobre todo en la velocidad de transeferencia y en el tiempo al realizar el test: mejoran bastante los resultados del contenedor aún siendo un ataque con la utilidad "ab" no muy agresivo.


##Ejercicio 6 
###Instalar juju.

Instalamos juju según [el guión del tema](http://jj.github.io/IV/documentos/temas/Contenedores#configurando-las-aplicaciones-en-un-tper). Una vez instalado muestro algún [pantallazo al listar los contenedores](http://i.imgur.com/YVcP6dX.png).


###Usándolo, instalar MySQL en un táper.

Seguimos con el guión para instalarlo: ejecutamos `juju deploy mediawiki` y `juju deploy mysql`

![imagen](http://i.imgur.com/6P6eeiZ.png)

Y para indicar que mediawiki va a usar precisamente mysql como base de datos añadimos la relación `juju add-relation mediawiki:db  mysql`:

![imagen](http://i.imgur.com/sacbRGf.png)



##Ejercicio 7
###Destruir toda la configuración creada anteriormente

Simplemente ejecutamos: `juju destroy-service mysql`, `juju destroy-service mediawiki` y `sudo juju destroy-environment local`:

![imagen](http://i.imgur.com/H7Zb0gk.png)


###Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.

Volvemos a ejecutar: 

`juju bootstrap` para crear el táper, `juju deploy mediawiki` y `juju deploy mysql` para instalar estas utilidades y  `juju add-relation mediawiki:db mysql` para añadir la relación. Para exponer el servicio: `juju expose mediawiki`.

Y podemos comprobar el estado de la máquina: `juju status`


###Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.

Simplemente ejecutaríamos los comandos vistos anteriormente e indicamos el entorno con el que se va a trabajar, por lo que el script contendría:

> 
> `juju switch local`
> 
> `sudo juju bootstrap`
> 
> `juju deploy mediawiki`
> 
> `juju deploy mysql`
> 
> `juju add-relation mediawiki:db mysql`
> 
> `juju expose mediawiki`
> 

## Ejercicio 8
###Instalar libvirt. Te puede ayudar [esta guía para Ubuntu.](https://help.ubuntu.com/12.04/serverguide/libvirt.html)

Seguimos el tutorial del enunciado. 

Para saber si soportamos las extensiones de virtualización necesarios para KVM ejecutamos: `kvm-ok`

![imagen](http://i.imgur.com/LJENe4I.png)

Como es compatible lo podemos instalar: `sudo apt-get install kvm libvirt-bin`

Una vez instalado podemos usar virsh:

![imagen](http://i.imgur.com/R1kMece.png)


## Ejercicio 9
###Instalar un contenedor usando virt-install.

Ejecutamos `sudo apt-get install virtinst` para instalarlo.

También instalamos virt-viewer para conectarnos a la máquina virtual con `sudo apt-get install virt-viewer`.

Ahora instalamos un contenedor, en mi caso ejecuto `sudo virt-install -n virt-ubuntuserver -r 512 --disk path=/var/lib/libvirt/images/virt-ubuntuserver.img,bus=virtio,size=5 -c ubuntu-14.04.1-server-i386.iso --accelerate --network network=default,model=virtio --connect=qemu:///system --vnc --noautoconsole -v`:

![imagen](http://i.imgur.com/v1AK9pN.png)


Podemos ver el listado de los contendores con: `sudo virsh -c qemu:///system list`.

Y acceder a la interfaz gráfica e instalarlo con: `virt-viewer -c qemu:///system virt-ubuntuserver`:

![imagen](http://i.imgur.com/qYPiTcu.png)



## Ejercicio 10		
###Instalar docker.

http://jj.github.io/IV/documentos/temas/Contenedores#gestin-de-contenedores-con-docker

http://docs.docker.com/installation/ubuntulinux/#ubuntu-trusty-1404-lts-64-bit
https://github.com/germaaan/IV_GMM/blob/master/TEMA3/ejercicio10.md

Para instalarlo seguimos el tutorial para [Ubuntu 14.04  (64-bit)](http://docs.docker.com/installation/ubuntulinux/#ubuntu-trusty-1404-lts-64-bit)

Podemos realizarlo de 2 maneras:

> Ejecutamos `sudo apt-get install docker.io` y `source /etc/bash_completion.d/docker.io`
> 
> Comprobamos que existe el fichero /usr/lib/apt/methods/https. Si no existe tendremos que instalar el paquete apt-transport-https con `apt-get install apt-transport-https`.
> 
> A continuación, añadimos la llave del repositorio Docker:
> 
> `sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9 `
> 
> Por último ejecutamos
> `sudo sh -c "echo deb https://get.docker.com/ubuntu docker main\ /etc/apt/sources.list.d/docker.list"`, `sudo apt-get update` y `sudo apt-get install lxc-docker`
> 

> 
> o ejecutando simplemente un script de curl: `curl -sSL https://get.docker.com/ubuntu/ | sudo sh`
> 

Ahora lo podremos ejecutar como servicio: `sudo docker -d &`

En mi caso, además tengo que ejecutar `sudo rm  /var/run/docker.pid`, ya que me aparece el aviso "pid file found, ensure docker is not running or delete /var/run/docker.pid". Una vez hecho esto puedo ejecutar sin problema.

![imagen](http://i.imgur.com/PKRq0HM.png)

Y creamos contenedores: `sudo docker pull ubuntu`

![imagen](http://i.imgur.com/J9uz60G.png)



## Ejercicio 10	
###Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.

Instalaremos CentOs, simplemente ejecutando `sudo docker pull centos`:

![imagen](http://i.imgur.com/wZdZ8dV.png)

###Buscar e instalar una imagen que incluya MongoDB.

Busco en el [enlace](https://registry.hub.docker.com/search?q=mongodb&searchfield=) proporcionado en los apuntes y encuentro un [imagen de Gentoo basada en MongoDB](https://registry.hub.docker.com/u/hairmare/mongodb/)

Y ejecuto `sudo docker pull hairmare/mongodb`:

![imagen](http://i.imgur.com/JmzUEZJ.png)



