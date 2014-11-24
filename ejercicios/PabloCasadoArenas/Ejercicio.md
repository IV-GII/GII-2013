
# Sesión 23-sept-2014

## Ejercicio 1

http://www.amazon.com/HP-Proliant-2x2-5GHz-Processors-2x146GB/dp/B0096CMENO/ref=sr_1_6?ie=UTF8&qid=1411978783&sr=8-6&keywords=server

Coste del servidor 195 $

Se amortiza el 25 % los años siguientes.
* 2015: 48,75 $
* 2016: 48,75 $
* 2017: 48,75 $
* 2018: 48,75 $
* 2019: 0 $
* 2020: 0 $
* 2021: 0 $


## Ejercicio 2

Usando la web de 
http://azure.microsoft.com/es-es/pricing/calculator/
he configurado esta opcion:
D1 series 1
1 core 3,5 GB de RAM, 10 GB de SSD - 1 instancia - 72,03 €
1 GB de base de datos 7,44 €
500 GB de ancho de banda 44,24 €
Total:
123,71 € / mes
€0,097/hr

Servidor VPS Classic 1
https://www.ovh.es/vps/vps-classic.xml

1 vCore
1 GB de RAM
10 GB RAID 1
100 MBPS
Garantizaos 100000 GB/mes

2,41 € /mes

Comparacion de coste durante 12 meses con un 1 % de uso.
Microsoft Azure: 123,711 € x 12 x 0,01 = 14,84 €
VPS Classic : 2,41 € x 12 = 28,92 €

Comparacion de coste durante 12 meses con un 10 % de uso.
Microsoft Azure: 123,711 € x 12 x 0,10 = 148,45 €
VPS Classic : 2,41 € x 12 = 28,92 €

## Ejercicio 3


```
x=1
if x==1:
	print "x es 1"
else:
	print "x no es 1"
```

Para empaquetarlo con cde:
cde python ejemplo.py

Esto me crea un paquete CDE portable.
Para ejecutarlo
cde-exec python ejemplo.py

## Ejercicio 4

Hecho el tutorial de docker.

## Ejercicio 5

Como root, apt-get install git

## Ejercicio 6

Creado proyecto y descargado con git clone https://github.com/ramako/IV.git
Modificado con vi README.md.
Lo añadimos para hacer commit y luego hacemos el push.

git add README.md

git commit

git push

## Ejercicio 7

Usando Debian, lo montamos con:

mount -t cgroup cgroup /sys/fs/cgroup

Con un ls /sys/fs/cgroup vemos los distintos ficheros.

blkio.io_merged
blkio.io_queued
blkio.io_service_bytes
blkio.io_serviced
blkio.io_service_time
blkio.io_wait_time
blkio.reset_stats
blkio.sectors
blkio.time
blkio.weight
blkio.weight_device
cgroup.clone_children
cgroup.event_control
cgroup.procs
cpuacct.stat
cpuacct.usage
cpuacct.usage_percpu
cpuset.cpu_exclusive
cpuset.cpus
cpuset.mem_exclusive
cpuset.mem_hardwall
cpuset.memory_migrate
cpuset.memory_pressure
cpuset.memory_pressure_enabled
cpuset.memory_spread_page
cpuset.memory_spread_slab
cpuset.mems
cpuset.sched_load_balance
cpuset.sched_relax_domain_level
cpu.shares
devices.allow
devices.deny
devices.list
net_cls.classid
notify_on_release
release_agent
tasks

## Ejercicio 8
Crear un grupo para navegador:

Como root, desde /sys/fs/cgroup hacemos:

mkdir navegador

mkdir texto

mkdir personalizado

Para iceweasel ps aux | grep iceweasel

echo 0 > cpuset.cpus 
echo 0 > cpuset.mems

Esto nos da permiso para escrbir en el archivo tasks, ponemos el PID de iceweasel

echo 5851 > tasks

El proceso es el mismo para los demas, cada uno con su PID.

cat cpuacct.usage nos da el uso de cada cgroup.

Navegador: 1084481435
LibreOffice: 4166749
GIMP: 299319669


Usando esta web para tener una estimacion del consumo medio: http://www.pcsilencioso.com/recursos/bdd/73-alimentacion/45-gasto-electricidad

Con unas 8 horas diarias y un PC con un consumo medio de 300 W al año serian 139,43 €.

Con una configuración de ordenador de 600 €, ya podemos amortizarlo de la siguiente forma:

2015 10 % de 600 € = 60 € + costes electricos = 199,43 €

2016 25 % de 600 € = 150 € + costes electricos = 289,43 €

2017 20 % de 600 € = 120 € + costes electricos = 259,43 €

2018 25 % de 600 € = 150 € + costes electricos =  289,43 €

2019 20 % de 600 € = 120 € + costes electricos= 259,43 €

## Ejercicio 9

En debian no he conseguido encontrar el fichero de configuracion.
```
mount {
        cpu = /sys/fs//cgroup/cpu;
        cpuacct = /sys/fs/cgroup/cpuacct;
        devices = /sys/fs/cgroup/devices;
        memory = /sys/fs/cgroup/memory;
}

group groupname/users {
	  cpu {
	    cpu.shares = 20;
	  }
	  memory {
        memory.limit_in_bytes="128000"; 
        }
       }
group groupname/system { 
    cpu {
        cpu.shares="80"; 
    }
    memory {
        memory.limit_in_bytes="256000"; 
        }
     }


```


![alt tag](http://i.imgur.com/jBmub9j.png)

Para cambiar la prioridad de entrada y salida de un servidor web, tenemos que modificar el grupo en el que esta el servidor web, y editar el archivo modificando el parametro blkio.
Ejemplo:
group Sweb{ 
	blkio{ 
		blkio.weight = 140
	} 
}

## Ejercicio 10

![alt tag](http://i.imgur.com/a3rBVmi.png)

## Ejercicio 11

La orden proviene del paquete cpu-checker que no se encuentra para debian por lo tanto da error.

## Ejercicio 12

Contestada en el foro.

# Tema 2

## Ejercicio 1

sudo apt-get install python-setuptools
sudo easy_install pip
sudo pip install virtualenv
virtualenv prueba

## Ejercicio 2

Registrado en Heroku.

## Ejercicio 3

Tras registrarse en OpenShift, tenemos un menú de opciones donde podemos seleccionar wordpress. Luego podemos ajustar la configuracion de nuestro wordpress y al darle create application terminamos de crear la aplicación.
Luego nos vamos a la pagina web que hemos escrito en el paso anterior, seleccionamos idioma, nombre de usuario y password y tendremos instalado wordpress. 

https://iv-ejercicio3.rhcloud.com/

## Ejercicio 4
```
function onOpen() {
  // Add a menu with some items, some separators, and a sub-menu.
  DocumentApp.getUi().createMenu('Menu de IV')
      .addItem('Ejercicio IV', 'prueba')
      .addToUi();
}

function prueba() {
  var result = DocumentApp.getUi().alert(
      'Prueba realizada con exito')
} 

```
## Ejercicio 5

Para python existe Paver, http://paver.github.io/paver/


## Ejercicio 6

En Heroku se usa /apps/:app/builds

https://blog.heroku.com/archives/2014/5/21/introducing_programmatic_builds_on_heroku

## Ejercicio 7

Para python existe Nose  :

https://nose.readthedocs.org/en/latest/

y Tox :

https://tox.readthedocs.org/en/latest/


# TEMA 3

## Ejercicio 1

Disasociamos el espacio de nombres actual

sudo unshare -m /bin/bash

Creamos mnt/disk y lo montamos.

sudo mkdir /mnt/disk

mount -o loop dsl-4.11.rc1.iso /mnt/disk

## Ejercicio 2

brctl show nos muestra todos los puentes. No muestra ninguno porque ninguno esta configurado todavia.

Creamos un puente y lo asignamos a la interfaz eth0.

brctl addbr pablo

brctl addif pablo eth0

brtcl show

## Ejercicio 3

Instalamos debootstrap:

sudo apt-get install debootstrap

Una vez instalado creamos el directorio donde queremos instalar el sistema, y por ejemplo bajamos un ubuntu y construimos el sistema con:

sudo debootstrap --arch=amd64 lucid /home/debootstrap http://archive.ubuntu.com/ubuntu

Cuando termine de descargar y configurar, tendremos en el directorio indicado el sistema instalado.

Instalacion rinse:

sudo apt-get install rinse

Bajamos la ISO con

sudo rinse --arch=amd64 --distribution centos-6 -directory /home/jaulas/centos/

## Ejercicio 4

He configurado Centos sobre Debian.

Accedemos a la maquina virtual con:

sudo chroot /home/jaulas/fedora

Montamos el filesystem virtual /proc ya que si no da error:

mount -t proc proc /proc

Probamos instalando el programa vim:

yum install vim

![Imgur](http://i.imgur.com/WOK5rGk.png)

## Ejercicio 5

Instalamos wget, instalamos tar, instalamos gcc.

Descargamos nginx:

wget http://nginx.org/download/nginx-1.6.0.tar.gz

lo descomprimimos, vamos al directorio y ejecutamos:

./configure --without-http_rewrite_module --without-http_gzip_module
![Imgur](http://i.imgur.com/p4md5wQ.png)
make install
![Imgur](http://i.imgur.com/cGXzGb1.png)
Ya lo tenemos instalado.

## Ejercicio 6

Instalamos jailkit.

Creamos directorio:

sudo mkdir /home/jaulas/jailkit 

Iniciamos la jaula:

sudo jk_init -v -j /home/jaulas/jailkit jk_lsh basicshell netutils editors

Añadimos usuario y configuramos su cuenta:

sudo adduser jaulajkit

Enjaulamos el usuario creado:

sudo jk_jailuser -m -j /home/jaulas/jailkit jaulajkit 

# Tema 4

## Ejercicio 1
sudo apt-get install lxc

##Ejercicio 2

sudo lxc-create -t debian -n u1

montamos cgroups:

mount -t cgroup cgroup /sys/fs/cgroup/

Iniciamos la maquina:

sudo lxc-start -n u1

