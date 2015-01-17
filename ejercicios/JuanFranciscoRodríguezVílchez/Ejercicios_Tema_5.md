
Ejercicios de Juan Francisco Rodríguez Vílchez
================================================

## Ejercicios Tema 5: Virtualización del almacenamiento ##

### Ejercicio 1 ###

**¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?**

En mi disco duro tengo instalado Windows 7 y Linux Mint Cinnamon, por lo tengo, tengo el espacio en el disco duro particionado en una partición de Windows y otra extendida con 2 volumenes lógicos en su interior. La primera partición corresponde a la partición que se crea durante la instalación de Windows 7 para tareas de arranque. En cuanto a la partición extendida (sda2, 212.39 Gib), el primer volumen lógico corresponde a la partición destinada a la raiz (sda5) y el siguiente volumen lógico es el destinado a /home (sda6).

En esta captura se puede observar lo descrito anteriormente:

![captura](http://i.imgur.com/biV3h71.png)

**Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.**

+ **(1)** [HP P2000 G3 FC DC SMB SAN Starter Kit-AP847B](http://www.shopbot.com.au/pp-hp-p2000-g3-fc-dc-smb-san-starter-kit-ap847b-price-418421.html)presenta un precio de 16.500$ (11.978'22eu) y una capacidad de 12 unidades SAS/SATA LFF de 3'5 pulgadas con una capacidad total de 48 TB.

+ **(2)** [WD NAS Red 4TB SATA3](http://www.pccomponentes.com/wd_nas_red_4tb_sata3.html) presenta un precio de 169eu y una unidad SATA3 de 3'5 pulgadas con una capacidad de 4 TB. Para **(2)** serían necesarias 2 unidades SATA que a 899 por unidad sumarían 3826eu como precio total.

**Comparativa entre los dos anteriores:**

+ **(1)** nos ofrece 12 veces la capacidad que **(2)**, es decir, 48 TB frente 4 TB. 
+ **(1)** es bastante más caro que **(2)** 11.978'22eu frente a 3826eu.
+ La interfaz de conexión mediante canal de fibra a 8 Gbit/s de **(1)** es muy superior a la conexión Gigabit mediante LAN de **(2)**.


### Ejercicio 2 ###

**Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.**

Para usar sshfs desde el anfitrión lo instalamos en este y posteriormente, procedemos a instalarlo también en la máquina virtual invitada (que va a ser una jaula de las creadas en el tema 4):

```sh
sudo apt-get install sshfs
```
Una vez instalado en ambas máquinas,en la máquina virtual tenemos que añadir dentro del grupo fuse, el usuario con el que nos conectaremos remotamente a la máquina virtual (que será 'juanfranrv'):

```sh
sudo usermod -a -G fuse juanfranrv
```
Usamos 'ifconfig' para saber la dirección IP de la máquina virtual a la que nos vamos a conectar:

![captura](http://i.imgur.com/sa0jayU.png)

Para este ejercicio, he creado una carpeta 'prueba' en el Escritorio de la máquina anfitriona a través de la cual nos vamos a conectar al home de la máquina virtual invitada mediante:

```sh
sshfs juanfranrv@172.17.42.1:/home /home/juanfranrv/Escritorio/prueba/
```
En la orden anterior he indicado el nombre del usuario remoto (juanfranrv), la dirección IP de la máquina remota (172.17.42.1), la ruta del recurso remoto (/home) y la ruta del recurso local en el que montamos dicho recurso remoto (/home/juanfranrv/Escritorio/prueba/).

Una vez realizada la conexión, si nos vamos al Escritorio a la carpeta 'prueba', podemos ver como el icono ha cambiado:

![captura](http://i.imgur.com/L3tjpLk.png)

Y si nos vamos a 'Equipo', podemos comprobar como aparece en el apartado de 'Dispositivos':

![captura](http://i.imgur.com/yQ5kVKG.png)

Por lo que ya podemos acceder a los ficheros de la máquina virtual invitada.


### Ejercicio 3 ###

**Crear imágenes con estos formatos (y otros que se encuentren tales como VMDK) y manipularlas a base de montarlas o con cualquier otra utilidad que se encuentre.**

Vamos a probar los diferentes tipos de imágenes que soporta [QEMU](http://en.wikibooks.org/wiki/QEMU/Images). Para ello podemos usar el siguiente formato:

```sh
 qemu-img create -f FORMATO NOMBRE_ARCHIVO TAMAÑO
```

Por ejemplo:

+ raw: qemu-img create -f raw imagen-raw.img 100M
+ qcow2: qemu-img create -f qcow2 imagen-qcow2.qcow2 100M
+ vmdk: qemu-img create -f vmdk imagen-vmdk.vmdk 100M
+ vdi: qemu-img create -f vdi imagen-vdi.vdi 100M

![captura](http://i.imgur.com/CZYhVI7.png)

Como estás imagenes no tienen ningún formato de sistema de archivos,es decir, se encuentran en 'vacías', d si intentamos montarlas obtendremos un error.

Montar la imagen como un dispositivo loop:

```sh
sudo mount -o loop,offset=32256 imagen-raw.img /mnt/mountpoint
```
![captura](http://i.imgur.com/aBbdJ6W.png)

Para arreglar el error anterior,deberemos primero convertir los archivos de imagen en dispositivos loop:

```sh
sudo losetup -v -f imagen-raw.img
```
Y posteriormente darle un formato de sistema de archivos cualquiera, como puede ser ext4:

```sh
sudo mkfs.ext4 /dev/loop0
```
![captura](http://i.imgur.com/fZzm3Oh.png)

Ahora ya podremos montar la imagen con el dispositivo loop correspondiente:

```sh
sudo mount /dev/loop0 /mnt/mountpoint/
```
Como el formado 'vdi' es el usado para los discos duros virtuales de la VirtualBox, podemos utilizar dichas imágenes para añadirlas en el 'almacenamiento' de una nueva máquina virtual o de una existente.

### Ejercicio 4 ###

**Crear uno o varios sistema de ficheros en bucle usando un formato que no sea habitual (xfs o btrfs) y comparar las prestaciones de entrada/salida entre sí y entre ellos y el sistema de ficheros en el que se encuentra, para comprobar el overhead que se añade mediante este sistema.**

Para crear los sistemas de ficheros en bucle, primero tenemos que generar los archivos de imagen:

```sh
qemu-img create -f raw xfs.img 100M
qemu-img create -f raw btrfs.img 100M
```

Los convertimos en dipositivos de bucle:

```sh
sudo losetup -v -f xfs.img
sudo losetup -v -f btrfs.img
```

Posteriormente, les damos el formato correspondiente a cada uno y los montamos:

```sh
sudo mkfs.xfs /dev/loop0
sudo mkfs.btrfs /dev/loop1

sudo mount /dev/loop0 /mnt/loop0/
sudo mount /dev/loop1 /mnt/loop1/

```
Para mkfs.btrfs he tenido que instalarlo `sudo apt-get install btrfs-tools`.

![captura](http://i.imgur.com/Pb8S1i1.png)


Para comparar las prestaciones de entrada/salida, creamos 1 archivo de 50 MB con el comando dd usando el archivo /dev/urandom:

```sh
dd if=/dev/urandom of=fichero bs=1k count=50k
```
![captura](http://i.imgur.com/IsxyHna.png)

Una vez realizado, copiamos el archivo mostrando la información del tiempo que tarda en ejecutarse en la primera imagen:

```sh
sudo time -v cp fichero /mnt/loop0/fichero
```
![captura](http://i.imgur.com/7w0pV73.png)

Y con la otra imagen realizamos lo mismo, copiamos el archivo mostrando la información del tiempo que tarda en ejecutarse en la segunda imagen:

```sh
sudo time -v cp fichero /mnt/loop1/fichero
```
![captura](http://i.imgur.com/x5Mx9BS.png)

Por lo tanto, el tiempo transcurrido con BTRFS (0.04s) es el doble que con XFS (0.02s) y además BTRFS consume un 1% más de CPU.

### Ejercicio 5 ###

**Instalar ceph en tu sistema operativo.**

Para instalar todos los paquetes que necesitamos para usar Ceph junto con las utilidades comunes para montar e interactuar con un sistema de archivos Ceph (ceph-fs-common y ceph-common):

```sh
sudo apt-get install ceph-mds
```

![captura](http://i.imgur.com/j3FX71b.png)

### Ejercicio 6 ###

**Crear un dispositivo ceph usando BTRFS o XFS**

**Avanzado Usar varios dispositivos en un nodo para distribuir la carga.**

Una vez instalado Ceph, primero tenemos que configurarlo, para ello:

```sh
mkdir -p /srv/ceph/{osd,mon,mds}
```
Posteriormente, creamos el archivo /etc/ceph/ceph.conf y añadimos:

```sh
[global]
log file = /var/log/ceph/$name.log
pid file = /var/run/ceph/$name.pid
[mon]
mon data = /srv/ceph/mon/$name
[mon.mio]
host = juanfranrv-PC
mon addr = 127.0.0.1:6789
[mds]
[mds.mio]
host = juanfranrv-PC
[osd]
osd data = /srv/ceph/osd/$name
osd journal = /srv/ceph/osd/$name/journal
osd journal size = 1000 ; journal size, in megabytes
[osd.0]
host = juanfranrv-PC
devs = /dev/loop0
```
Necesitamos crear un sistema bucle con formato con sistema xfs:

```sh
qemu-img create -f raw ceph_osd.img 100M
sudo losetup -v -f ceph_osd.img
sudo mkfs.xfs /dev/loop0
```
Tenemos que crear un directorio a mano:

```sh
sudo mkdir /srv/ceph/osd/osd.0
```

Creamos el sistema de ficheros de objetos:

```sh
sudo /sbin/mkcephfs -a -c /etc/ceph/ceph.conf
```
![captura](http://i.imgur.com/ghxkDxf.png)

Iniciamos el servicio:

```sh
sudo /etc/init.d/ceph -a start
```
![captura](http://i.imgur.com/ElWJz72.png)

Comprobamos si se ha iniciado correctamente comprobando el estado del Ceph:

```sh
sudo ceph -s 
```
![captura](http://i.imgur.com/V7GwPwx.png)

Finalmente creamos el directorio donde lo vamos a montar y lo montamos:

```sh
sudo mkdir /mnt/ceph
sudo mount -t ceph juanfranrv-PC:/ /mnt/ceph
```

### Ejercicio 7 ###

**Almacenar objetos y ver la forma de almacenar directorios completos usando ceph y rados.**

Para almacenar los objetos en rados lo primero que deberemos hacer es crear una piscina: 

```sh
rados mkpool piscina
```
Si queremos comprobar que se ha creado:

```sh
rados lspools
```
Una vez creado, podemos introducir cualquier archivo que tengamos en nuestro sistema, como por ejemplo:

```sh
rados put -p prueba-piscina objeto prueba.img
```

### Ejercicio 8 ###

**Tras crear la cuenta de Azure, instalar las herramientas de línea de órdenes (Command line interface, cli) del mismo y configurarlas con la cuenta Azure correspondiente.**

Procedemos a instalar CLI de la siguiente forma:

```sh
sudo npm install azure-cli
```
Aún así, me daba el siguiente error al utilizar azure:

/usr/bin/env: node: No existe el archivo o el directorio

Por lo que he tenido que crear un enlace simbólico de la siguiente forma:

```sh
ln -s /usr/bin/nodejs /usr/bin/node
```
Debido a que algunas distribuciones de linux instalan nodejs y colocan como ejecutable "nodejs" pero no como "node" por lo que daba el error anterior.
 
Después, deberemos descargar la configuración de publicación para mi cuenta:

```sh
azure account download
```

Después de introducir nuestro nombre de usuario y contraseña para iniciar sesión en Azure, automáticamente se descargará nuestro archivo de configuración. Importamos este archivo usando:

```sh
azure account import [fichero]
```

### Ejercicio 9 ###

**Crear varios contenedores en la cuenta usando la línea de órdenes para ficheros de diferente tipo y almacenar en ellos las imágenes en las que capturéis las pantallas donde se muestre lo que habéis hecho.**

Para crear la cuenta y obtener las claves necesarias ejecutamos:

```sh
azure account storage create juanfranrv
azure storage account keys list juanfranrv
```
Nos dará una clave primaria y otra secundaria. Esta información se debe copiar en variables de entorno:

```sh
export AZURE_STORAGE_ACCOUNT=juanfranrv
export  AZURE_STORAGE_ACCESS_KEY=clave
```
Ahora podemos crear los contenedores que deseemos:

```sh
azure storage container create taper -p blob
azure storage container create taper1 -p blob
```
Y finalmente, para subir el fichero que queramos debemos de hacerlo de la siguiente forma:

```sh
azure storage blob upload eje09_img01.jpg taper1 eje09_img01.jpg
```
[Faltan capturas de pantalla para este ejercicio]

### Ejercicio 10 ###

**Desde un programa en Ruby o en algún otro lenguaje, listar los blobs que hay en un contenedor, crear un fichero con la lista de los mismos y subirla al propio contenedor. Muy meta todo.**

Primero instalamos la gema para Azure para poder trabajar con Ruby:

```sh
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