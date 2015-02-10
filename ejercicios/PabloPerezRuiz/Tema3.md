##3.Técnicas de virtualización

###Ejercicio 1: 
####Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback

Para hacerlo ejecutamos:

`mount -o loop -t miImagen miImagen.iso /mnt/miImagen`

"miImagen" sera dicha imagen a crear.

###Ejercicio 2: 
####Mostrar los puentes configurados en el sistema operativo. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

Tengo que instalar previamente brctl, para ello hacemos:

`sudo apt-get install bridge-utils`

Los puentes configurados en mi SO son:

<img src="http://i57.tinypic.com/j9leyp.png"></img>

Para crear un interfaz virtual y asignarla al interfaz de la tarjeta wifi hacemos:

  * sudo brctl addbr nuevopuente
  * sudo brctl addif nuevopuente wlan0
  * Editamos /etc/networks/interfaces, configuramos la interfaz y guardamos
  * Activamos interfaz aplicando ifconfig nuevopuente up


###Ejercicio 3: 
####Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.

Instalo debootsrap:

<img src="http://i58.tinypic.com/df8svt.png"></img>

Creamos el usuario jaulas e instalaremos otra version de SO mediante el comando:

`sudo debootstrap --arch=i386 saucy /home/jaulas/saucy32/ http://archive.ubuntu.com/ubuntu`

<img src="http://i59.tinypic.com/huhe0m.png"></img>

Para el segundo punto instalamos Rinse y fedora:

`sudo apt-get install rinse`

`sudo rinse --arch=amd64 --distribution fedora-core-6 --directory /home/jaulas/fedora/`

Finalizando correctamente.

###Ejercicio 4: 
####Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.

Entramos en una de las jaulas, y siendo root, montamos /proc:

`sudo chroot /home/jaulas/saucy32`
`mount -t proc proc /proc`

El guion nos dice que instalemos el paquete en español, hacemos:

`apt-get install language-pack-es`

y una vez instalado curl, ejecutamos la herramienta:

`sudo apt-get install curl`

<img src="http://i58.tinypic.com/2z84t1j.png"></img>


###Ejercicio 5: 
####Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.

Para acceder a la jaula que hemos creado antes, hacemos:

`sudo chroot`

Como hemos montado /proc, instalamos nginx en nuestra jaula chroot haciendo:

`apt-get install nginx`

Finalmente comprobamos que funciona correctamente con el comando:

`service nginx start`

###Ejercicio 6: 
####Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar. 

Antes de instalar jailkit, debemos instalar gcc y make:

`apt-get install gcc`  
`apt-get install make`  

Ahora si podemos descargar e instalar jailkit:

`wget http://olivier.sessink.nl/jailkit/jailkit-2.17.tar.gz`  
`tar -xzvf jailkit-2.17.tar.gz`  

<img src="http://i62.tinypic.com/eq5jdg.png"></img>

cd jailkit-2.17
sudo ./configure && make && sudo make install

Creamos una nueva jaula y la iniciamos:

`sudo mkdir /home/jaulas/jailkit sudo jk_init -v -j /home/jaulas/jailkit jk_lsh basicshell netutils editors`

Finalmente para enjaular al usuario hacemos:

`sudo adduser userenjauladojailkit sudo jk_jailuser -m -j /home/jaulas/jailkit userenjauladojailkit` 
