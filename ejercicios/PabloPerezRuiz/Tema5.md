##5. Virtualización del almacenamiento

###Ejercicio 1: 
####¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?
Si tienes acceso en tu escuela o facultad a un ordenador común para las prácticas, ¿qué almacenamiento físico utiliza?
Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.

Tengo 3 particiones de Linux:

<img src=http://i60.tinypic.com/qwwqia.png></img>


He elegido esta:

[SAN](http://www.senetic.es/product/BV871A?gclid=CjwKEAiA5qOlBRDAn8K5qen65joSJADRvlbqwCQAg_tiDmjm9ofpXqzEFRrT11QI0dHZGm4Xxg1ZyhoCzLHw_wcB)


La primera característica que apreciamos es que disponen de un equipo de interconexión dedicado (conmutadores, puentes, etc.) cosa que las placas de los PC's estandar no soportan, ademas de numerosos elementos de almacenamiento de red (discos duros) que un PC normal no admite. 

###Ejercicio 2: 
####Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.
Avanzado Usar los drivers de FUSE para Ruby (aquí explican más o menos como hacerlo con fusefs para mostrar el contenido de una estructura de datos en un lenguaje como si fuera un fichero. Este es un ejemplo en Python.

Para saber si tenemos instalado FUSE, hacemos:

``lsmod | grep fuse``

Que si no nos devuelve nada no tenemos dicho modulo cargado, por lo que para cargarlo hacemos:

```modprobe fuse
depmod -A```

en ambas máquinas (máquina servidora y máquina cliente).

Instalamos sshfs en ambas maquinas mediante: 

``sudo apt-get install sshfs``

En la máquina que nos hace de cliente, creamos una carpeta donde queramos montar la carpeta remota y hacemos:

``sshfs [usuario remoto]]@[IP remota]]:[carpeta remota a montar] [punto de montaje]``

Finalmente los cambios que hagamos en la maquina se veran reflejados en la otra.

###Ejercicio 3:
####Crear imágenes con estos formatos (y otros que se encuentren tales como VMDK) y manipularlas a base de montarlas o con cualquier otra utilidad que se encuentre

Instalamos en primer lugar quemu mediante:

``sudo apt-get install qemu-system``

En segundo lugar creamos el almacenamiento virtual y lo montamos:

```bash
sudo qemu-img create -f qcow2 cow.qcow2 5M
sudo losetup -v -f cow.qcow2
sudo mkfs.ext4 /dev/loop0
```
<img src=http://i59.tinypic.com/29z3i3p.png></img>



###Ejercicio 4:
####Crear uno o varios sistema de ficheros en bucle usando un formato que no sea habitual (xfs o btrfs) y comparar las prestaciones de entrada/salida entre sí y entre ellos y el sistema de ficheros en el que se encuentra, para comprobar el overhead que se añade mediante este sistema

Para usar esos formatos debemos instalar previamente:

```bash
sudo apt-get install xfsprogs
sudo apt-get install btrfs-tools
```

Creamos las imagenes y les damos formato:

```bash
sudo qemu-img create -f raw  i1.img 256M
sudo qemu-img create -f raw  i2.img 256M
```

```bash
sudo losetup -v -f i1.img
sudo losetup -v -f i2.img
sudo mkfs.xfs /dev/loop4
sudo mkfs.btrfs /dev/loop3
```

Creamos los directorios para las imagenes dentro de /mnt y las montamos:

```bash
sudo mkdir mnt/fimg1
sudo mkdir mnt/fimg2
sudo mount -t xfs /dev/loop2 /mnt/fimg1
sudo mount -t xfs /dev/loop3 /mnt/fimg2
```

Finalmente copiamos un fichero grande para comprobarlo:

```bash
sudo time -v cp p1 /mnt/fimg1/ejemplo1
sudo time -v cp p1 /mnt/fimg2/ejemplo1
```

###Ejercicio 5:
####Instalar ceph en tu sistema operativo.

Para ello hacemos:

``sudo apt-get install ceph-mds``

<img src=http://i59.tinypic.com/acbcsn.png></img>


###Ejercicio 6:
####Crear un dispositivo ceph usando BTRFS o XFS
Avanzado: Usar varios dispositivos en un nodo para distribuir la carga.

Para ello creamos en primer lugar los directorios que hacen falta:

``sudo mkdir -p /srv/ceph/{osd,mon,mds}``

Creamos el fichero de configuracion:

``sudo gedit /etc/ceph/ceph.conf``

y lo rellenamos:

```bash
[global]
log file = /var/log/ceph/$name.log
pid file = /var/run/ceph/$name.pid
[mon]
mon data = /srv/ceph/mon/$name
[mon.mio]
host = ubuntu
mon addr = 127.0.0.1:6789
[mds]
[mds.mio]
host = ubuntu
[osd]
osd data = /srv/ceph/osd/$name
osd journal = /srv/ceph/osd/$name/journal
osd journal size = 1000 ; journal size, in megabytes
[osd.0]
host = ubuntu
devs = /dev/loop4
```

Creamos el sistema:

```bash
qemu-img create -f raw ceph.img 100M
sudo losetup -v -f ceph.img
sudo mkfs.xfs /dev/loop4
```

Creamos los ficheros:

```bash
sudo mkdir /srv/ceph/osd/osd.0
sudo /sbin/mkcephfs -a -c /etc/ceph/ceph.conf
```
<img src=http://i62.tinypic.com/i5sols.png></img>

Iniciamos:

``sudo /etc/init.d/ceph -a start``

<img src=http://i58.tinypic.com/30wts0w.png></img>


Y finalmente montamos:

```bash
sudo mkdir /mnt/ceph
sudo mount -t ceph ubuntu:/ /mnt/ceph
```

###Ejercicio 7:
####Almacenar objetos y ver la forma de almacenar directorios completos usando ceph y rados.

Creamos la pool:

``sudo rados mkpool mypool``

Y añadimos nuestro fichero mediante:

``sudo rados put -p piscina obj ej2``

###Ejercicio 8:
####Tras crear la cuenta de Azure, instalar las herramientas de línea de órdenes (Command line interface, cli) del mismo y configurarlas con la cuenta Azure correspondiente

Una vez obtenemos la cuenta de Azure, hacemos:

``sudo npm install azure-cli -g``

Enlazamos con nuestra cuenta:

``azure account download``

Debemos identificarnos en la direccion que nos dan y se bajara un fichero, que importamos haciendo:

``azure account import [fichero]``

<img src=http://i59.tinypic.com/1zdt5dt.png></img>

###Ejercicio 9:
####Crear varios contenedores en la cuenta usando la línea de órdenes para ficheros de diferente tipo y almacenar en ellos las imágenes en las que capturéis las pantallas donde se muestre lo que habéis hecho.

Para crearlos hacemos:

``azure storage account create ppruiz``

Introducimos 1 (Oeste de Europa) y:

``azure storage account keys list ppruiz``

Exportamos claves:

```bash
export AZURE_STORAGE_ACCOUNT=ppruiz
export  AZURE_STORAGE_ACCESS_KEY=(mi clave primaria)
```

Creamos los distintos contenedores:

```bash
azure storage container create taper1 -p blob
azure storage container create taper2 -p blob
azure storage container create taper3 -p blob
azure storage container create taper4 -p blob
```
<img src=http://i58.tinypic.com/6zbwcj.png></img>

El fichero con la captura lo subimos mediante:

``azure storage blob upload Screenshot_7.png taper3 Screenshot_7.png``

<img src=http://i60.tinypic.com/15hxv8p.png></img>

[Captura de pantalla](https://ppruiz.blob.core.windows.net/taper3/Screenshot_7.png)

###Ejercicio 10:
####Desde un programa en Ruby o en algún otro lenguaje, listar los blobs que hay en un contenedor, crear un fichero con la lista de los mismos y subirla al propio contenedor. Muy meta todo.

```bash
#!/usr/bin/ruby

require "azure"

azure_blob_service = Azure::BlobService.new
tapers = azure_blob_service.list_containers()

tapers.each do |taper|
  File.open("lista", "w") do |lista|
    lista.puts taper.name + " "
    blobs = azure_blob_service.list_blobs(taper.name)
    blobs.each do |blob|
      lista.puts blob.name + " "
    end
  end
  text = File.open("lista", "rb") { |file| file.read }
  blob = azure_blob_service.create_block_blob(contenedor.name, "lista", text)
  puts blob.name
end
```
