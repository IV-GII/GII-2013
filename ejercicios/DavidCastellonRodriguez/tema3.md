#Ejercicio 1

###### Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él.

Creamos el espacio de nombres:

`sudo unshare -u /bin/bash`

El siguiente comando permite montar una imagen iso

`sh mount -o loop disk.iso /mnt/disk `

#Ejercicio 2

###### 1. Mostrar los puentes configurados en el sistema operativo.

![Puentes configurados](http://i62.tinypic.com/n5rlhf.jpg)

###### 2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

Creamos un puente nuevo con la orden

`sudo brctl addbr puente0`

y se lo asignamos a tarjeta wifi:

`sudo brctl addif puente0 wlan0`

#Ejercicio 3

###### 1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.

Para realizar la instalación:

`sudo apt-get install debootstrap`

Y para usar debootstrap:

`sudo debootstrap --arch=amd64 saucy /home/jaulas/saucy/ http://archive.ubuntu.com/ubuntu`


###### 2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.

Ahora, para repetir el proceso con Fedora dentro de Debia usando Rinse en primer lugar instalamos rinse:

`sudo apt-get install rinse`

Y después hacemos el mismo proceso que con debootstrap:

`sudo rinse --arch=amd64 --distribution fedora-core-6 --directory /home/jaulas/fedora`

#Ejercicio 4

######Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.


Para el ejercicio usaré la jaula creada en el ejercicio anterior:

`sudo chroot /home/jaulas/saucy`

Pero antes de nada tendremos que 'completar' la máquina:

`mount -t proc proc /proc`

También instalaremos el paquete de idioma español con objeto de evitar errores:

`sudo apt-get install language-pack-es`

Comprobar aplicaciones podemos ejecutar algún editor como 'vi', 'nano', o instalar algun compilador...

#Ejercicio 5

###### Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.

De nuevo nos localizamos en la jauca con chroot y tras esto instalamos nginx:

`sudo apt-get install nginx`

Una vez instalado, iniciamos el servidor:

`service nginx start`

Comprobamos el funcionamiento:

`curl localhost` <-- obtenemos la página principal de nginx

#Ejercicio 6

###### Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.

1. Instalamos paquetes necesarios para jailkit

`sudo apt-get install build-essential autoconf automake libtool flex bison debhelper binutils-gold`

2. Descargamos jailkit con wget

`wget http://olivier.sessink.nl/jailkit/jailkit-2.16.tar.gz`

3. Extraemos el archivo

`tar -vxzf jailkit-2.16.tar.gz`

4. Compilamos y creamos el archivo deb

`cd jailkit-2.16/
sudo ./debian/rules binary`

5. Por último instalamos 

`cd ..  sudo dpkg -i jailkit_2.16-1_amd64.deb`

[Referencia](www.binarytides.com/install-jailkit-ubuntu-debian)

###Enjaular un usuario:

Creamos la carpeta raiz de la jaula
`mkdir /home/jaula`

Le hacemos propietario a root de la raiz de la jaula
`chown root:root /home/jaula`

Damos permisos a la raiz de la jaula
`chmod 0755 /home/jaula`

Indicamos lo que en esa jaula se podrá usar

`sudo jk_init -v /home/jaula basicshell
sudo jk_init -v /home/jaula editors 
sudo jk_init -v /home/jaula extendedshell 
sudo jk_init -v /home/jaula netutils 
sudo jk_init -v /home/jaula ssh 
sudo jk_init -v /home/jaula sftp`

Creamos y añadimos el usuario piolin asignándole la jaula
sudo adduser piolin

`sudo jk_jailuser -m -j /home/jaula piolin`

`sudo passwd piolin`

Creamos el home de piolin dentro de la jaula y le hacemos propietario de su home
sudo mkdir -p /home/jaula/home/piolin

`sudo chown piolin:piolin /home/jaula/home/piolin`

Testeamos la cuenta y chequeamos los logs

`sftp piolin@localhost`

[Referencia](http://www.javcasta.com/2010/11/28/jaula-en-ubuntu-con-jailkit/)

