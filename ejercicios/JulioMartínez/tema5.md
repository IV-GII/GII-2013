Ejercicios de Julio Martínez Martínez-Checa
============================

# Tema 5

## Ejercicio 1.1 ##
**¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?**

En mi caso utilizo una partición para /, otra partición extendida (volumen lógico) que agrupa swap de linux y /home, y ya para Windows la partición de arranque y la de almacenamiento:

![captura67](http://i.imgur.com/THFKryI.png)

## Ejercicio 1.2 ##
**Si tienes acceso en tu escuela o facultad a un ordenador común para las prácticas, ¿qué almacenamiento físico utiliza?**

## Ejercicio 1.3 ##
**Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.**

## Ejercicio 2 ##
**Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.**

**Avanzado Usar los drivers de FUSE para Ruby (aquí explican más o menos como hacerlo con fusefs para mostrar el contenido de una estructura de datos en un lenguaje como si fuera un fichero. Este es un ejemplo en Python.**

Voy a conectar mi sistema de ficheros del anfitrión a la máquina virtual usando sshfs:

Localizamos la ip del host (en mi caso 192.168.56.1, visto desde virtualbox) añadimos esta línea al fichero /etc/hosts para acceder de forma más cómoda:

```
192.168.56.1    host
```

Instalamos sshfs en mi máquina virtual

```
$ sudo apt-get install sshfs
```

Creamos una carpeta para montar el sistema de ficheros y lo montamos con sshfs:

```
$ mkdir host
$ sshfs julio@host:/home/julio host
```

Finamlente podremos acceder a nuestras carpetas montadas en una carpeta usando el protocolo ssh:

![captura68](http://i.imgur.com/rbEXpTA.png)


## Ejercicio 3 ##
**Crear imágenes con estos formatos (y otros que se encuentren tales como VMDK) y manipularlas a base de montarlas o con cualquier otra utilidad que se encuentre**

Voy a crear y montar una imagen con formato raw.

Creamos el archivo del disco duro:

```
$ dd of=disco1.img bs=1k seek=5242879 count=0
```

Ahora necesitamos crear la tabla de particiones y formatear en un sistema de ficheros reconocible por el sistema, si no nos dará errores al montar. Empezamos creando la tabla de particiones con fdisk:

![captura69](http://i.imgur.com/j1vH0Nw.png)

Ahora formateamos con el sistema de ficheros ext4 usando mkfs:

![captura70](http://i.imgur.com/XaV1YZe.png)

Por último montamos la imagen en una carpeta:

```
$ sudo mount -o loop disco1.img /media/virtual
```

Ahora vemos que se encuentra entre nuestras particiones y podemos navegar por el sistema de archivos:

![captura71](http://i.imgur.com/xZ436oX.png)

![captura72](http://i.imgur.com/pzt8FRE.png)

Otra alternativa puede ser crear una imagen vmdk con virtualbox:

```
vboxmanage createhd --filename disco1.vmdk --format VMDK --size 1024
```

Una vez creada podemos importarla a alguna máquina virtual

## Ejercicio 4 ##
**Crear uno o varios sistema de ficheros en bucle usando un formato que no sea habitual (xfs o btrfs) y comparar las prestaciones de entrada/salida entre sí y entre ellos y el sistema de ficheros en el que se encuentra, para comprobar el overhead que se añade mediante este sistema**

Creamos un sistema btrfs y otro xfs, y los montamos:
```
$ dd of=disco1.img bs=1k seek=5242879 count=0
$ dd of=disco2.img bs=1k seek=5242879 count=0 

$ sudo mkfs -t btrfs disco1.img
$ sudo mkfs -t xfs disco2.img

$ sudo mount disco1.img /media/virtual
$ sudo mount disco2.img /media/virtual2
```

Ahora veremos como nuestros discos se encuentran montados:

![captura73](http://i.imgur.com/HywXade.png)


Repetimos varios tests a los discos montados para comprobar su rendimiento:

```
$ sudo hdparm -Tt /dev/loop0
$ sudo hdparm -Tt /dev/loop1
$ sudo hdparm -Tt /dev/sda5
```

Estos son los resultados obtenidos por la repetición del test 5 veces:


|             |         BTRFS            |                                    |
|:-----------:|:------------------------:|:----------------------------------:|
|             | Lecturas de caché (MB/s) | Lecturas de buffer de disco (MB/s) | 
|   Prueba 1  |        7852,23           |              1862,84               | 
|   Prueba 2  |        7236,7            |              1859,84               |          
|   Prueba 3  |        7097,35           |              1932,79               |          
|   Prueba 4  |        7478,63           |              2046,71               |          
|   Prueba 5  |        7276,5            |              1868,39               |         
|             |                          |                                    |
|    Media    |        7388,282          |              1914,114              | 



|             |           XFS            |                                    |
|:-----------:|:------------------------:|:----------------------------------:|
|             | Lecturas de caché (MB/s) | Lecturas de buffer de disco (MB/s) | 
|   Prueba 1  |        6801,75           |              799,91                | 
|   Prueba 2  |        7198,82           |              755,92                |          
|   Prueba 3  |        6986,62           |              788,84                |          
|   Prueba 4  |        7395,28           |              713,31                |          
|   Prueba 5  |        6471,38           |              708,83                |         
|             |                          |                                    |
|    Media    |        6970,77           |              753,362               |


|             |        EXT4 (host)       |                                    |
|:-----------:|:------------------------:|:----------------------------------:|
|             | Lecturas de caché (MB/s) | Lecturas de buffer de disco (MB/s) | 
|   Prueba 1  |        7808,54           |              104,97                | 
|   Prueba 2  |        7785,91           |              106,48                |          
|   Prueba 3  |        7656,24           |              105,04                |          
|   Prueba 4  |        7731,8            |              108,77                |          
|   Prueba 5  |        7637,13           |              106,75                |         
|             |                          |                                    |
|    Media    |        7723,924          |              106,402               |


Viendo estos datos podemos concluir que el sistema BTRFS no introduce excesivo overhead ya que tiene un valor muy parecido al host en lecturas de caché. El sistema XFS es más lento que BTRFS en este aspecto.

En lecturas de buffer del disco también gana BTRFS y nuestro sistema host parece que no alcanza la velocidad que tienen los dispositivos virtuales para esto.

## Ejercicio 5 ##
**Instalar ceph en tu sistema operativo.**

Para instalar en Debian basta con ejecutar:

```
$ sudo apt-get install ceph
```
# Ejercicio 6 #
**Crear un dispositivo ceph usando BTRFS o XFS**
**Avanzado Usar varios dispositivos en un nodo para distribuir la carga.**

Creamos los directorios de ceph:

```
mkdir -p /srv/ceph/{osd,mon,mds}
```
Creamos el archivo de configuración de ceph:

```
[global]
log file = /var/log/ceph/$name.log
pid file = /var/run/ceph/$name.pid
auth cluster required = none
auth service required = none
auth client required = none
auth supported = none
[mon]
mon data = /srv/ceph/mon/$name
[mon.mio]
host = julio-portatil
mon addr = 127.0.0.1:6789
[mds]
[mds.mio]
host = julio-portatil
[osd]
osd data = /srv/ceph/osd/$name
osd journal = /srv/ceph/osd/$name/journal
osd journal size = 1000 ; journal size, in megabytes
[osd.0]
host = julio-portatil
devs = /dev/loop0
```

Creamos una imagen de ceph con formato xfs:

```
qemu-img create -f raw ceph.img 100M
sudo losetup -v -f ceph.img
sudo mkfs.xfs /dev/loop0
```

Ahora tendremos que crear el directorio osd.0 a mano:

```
sudo mkdir /srv/ceph/osd/osd.0
``` 

Creamos el osd a partir de la configuración que hicimos:

```
sudo /sbin/mkcephfs -a -c /etc/ceph/ceph.conf
```

Iniciamos el servicio:

```
sudo service ceph start
```

Ahora con ceph -s podemos ver el estado en el que se encuentra:

![captura74](http://i.imgur.com/fU1NXvl.png)


Finalmente lo montamos en un directorio que hayamos creado previamente:

```
sudo mount -t ceph julio-portatil:/ /media/ceph
```

### Ejercicio 7 ###

**Almacenar objetos y ver la forma de almacenar directorios completos usando ceph y rados.**

Para almacenar los objetos en rados lo primero que deberemos hacer es crear una piscina: 

```
rados mkpool pool
```
Si queremos comprobar que se ha creado:

```
rados lspools
```
Una vez creado, podemos introducir cualquier archivo que tengamos en nuestro sistema, como por ejemplo:

```
rados put -p prueba-pool objeto prueba.txt
```

### Ejercicio 8 ###

**Tras crear la cuenta de Azure, instalar las herramientas de línea de órdenes (Command line interface, cli) del mismo y configurarlas con la cuenta Azure correspondiente.**

Procedemos a instalar CLI de la siguiente forma:

```
sudo apt-get install nodejs-legacy
sudo apt-get install npm
npm install -g azure-cli
```

El siguiente paso será logearnos con nuestra cuenta:

```
azure login -u <your organizational ID email address>
```
 
Después, deberemos enlazar con nuestra cuenta de Azure. Para ello, ejecutamos:

```
azure account download
```

Se nos indicará una URL. Cuando la abramos, se descargará un fichero. Importamos este fichero con:

```
azure account import <fichero>
```

### Ejercicio 9 ###

**Crear varios contenedores en la cuenta usando la línea de órdenes para ficheros de diferente tipo y almacenar en ellos las imágenes en las que capturéis las pantallas donde se muestre lo que habéis hecho.**

Para crear la cuenta y obtener las claves necesarias ejecutamos:

```
azure account storage create julioxus
azure storage account keys list julioxus
```
Nos dará una clave primaria y otra secundaria. Esta información se debe copiar en variables de entorno:

```
export AZURE_STORAGE_ACCOUNT=julioxus
export  AZURE_STORAGE_ACCESS_KEY=clave
```
Ahora podemos crear los contenedores que deseemos:

```
azure storage container create taper -p blob
azure storage container create taper1 -p blob
```
Y finalmente, para subir el fichero que queramos debemos de hacerlo de la siguiente forma:

```
azure storage blob upload eje09_img01.jpg taper1 eje09_img01.jpg
```
[Faltan capturas de pantalla para este ejercicio]

### Ejercicio 10 ###

**Desde un programa en Ruby o en algún otro lenguaje, listar los blobs que hay en un contenedor, crear un fichero con la lista de los mismos y subirla al propio contenedor. Muy meta todo.**

Primero instalamos la gema para Azure para poder trabajar con Ruby:

```
sudo gem install azure
```

El siguiente script consultará los contenedores de nuestra cuenta, y para cada uno creará un archivo de texto con los blobs que tiene, posteriormente el archivo será subido a su respectivo contenedor.

```sh
#!/usr/bin/ruby

require "azure"

azure_blob_service = Azure::BlobService.new
containers = azure_blob_service.list_containers()

containers.each do |container|

    File.open("listado.txt", "w") do |list|

        list.puts container.name + ":"
        list.puts "=" * container.name.length

        blobs = azure_blob_service.list_blobs(container.name)

        blobs.each do |blob|
            list.puts "\t" + blob.name
        end
    end

    content = File.open("listado.txt", "rb") { |file| file.read }
    blob = azure_blob_service.create_block_blob(container.name, "listado.txt", content)
    puts "\tSubido archivo " + blob.name
end

```
+ **Azure::BlobService.new**: crea una interfaz para acceder al servicio de almacenamiento.
+ **azure_blob_service.list_containers()**: lista los contenedores existentes en una cuenta de almacenamiento.
+ **azure_blob_service.list_blobs(container.name)**: lista todos los blobs existentes en el contenedor indicado.