<h1> Marcos Jiménez Fernández </h1>

<h2> Tema 3 </h2>

<strong> EJERCICIO 1: Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que
desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback. </strong>

Antes de comenzar, necesitamos crear una carpeta donde montaremos nuestra imagen:
```
mkdir mnt
``` 
En esa carpeta vamos a montar nuestra imagen. Ahora lo que tenemos que hacer es escribir lo siguiente (en mi caso voy a usar una ISO de Ubuntu 14.04):
```
mount -o loop ubuntu-14.04-desktop-amd64.iso /mnt
```
Y ya quedaría montada la ISO en esa carpeta:

<img src="http://i58.tinypic.com/2r7oyl3.png"></img><br>
<br>
<strong> EJERCICIO 2: Mostrar los puentes configurados en el sistema operativo. Crear un interfaz virtual y asignarlo al 
interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.</strong>

Para mostrar los puentes configurados en Ubuntu lo hacemos con la orden:
```
brctl show
```
En caso de que no encontrara el comando, lo instalamos con:
```
sudo apt-get install bridge-utils
```
El resultado sería éste:

<img src="http://i59.tinypic.com/5exw1f.png"></img><br>

Lo siguiente es crear el interfaz virtual al que vamos a asignarle la interfaz de la wifi. Empezamos creándolo con:
```
brctl addbr infraestructuraVirtual
```
Ahora comprobamos que se ha creado correctamente con:
```
brctl show
```

<img src="http://i57.tinypic.com/16jmq7q.png"></img>

Ahora asignamos la interfaz creada a una de las interfaces de nuestra tarjeta de red:
```
brctl addif infraestructuraVirtual eth0
```
Por último, hacienso uso de:
```
brctl show
ip addr show
```
Podemos ver que el proceso ha concluido correctamente. Aquí una captura del resultado final:

<img src="http://i57.tinypic.com/347hgz8.png"></img>

<strong> EJERCICIO 3: Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda 
ejecutar más adelante. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.</strong>

Toda la información requerida para montar un sistema con debootstrap se encuentra aquí: https://wiki.ubuntu.com/DebootstrapChroot Si no tenemos instalado el programa lo instalamos con:
```
sudo apt-get install debootstrap
```
Y ahora escribimos lo siguiente para crear nuestro sistema (que estará alojado en la carpeta /jaulas/hardy):
```
debootstrap --arch=i386 trusty /home/jaulas/hardy/ http://archive.ubuntu.com/ubuntu
```
Y se empezará a instalar nuestro sistema:

<img src="http://i61.tinypic.com/29e15rq.png"></img>

Ahora vamos a usar la herramienta Rinse para crear un sistema Fedora dentro de Ubuntu. En primer lugar lo instalamos:
```
sudo apt-get install rinse
```
Elegimos Fedora 10 para la instalación del sistema y lo hacemos con:
```
rinse --arch i386 --distribution fedora-core-10 --directory /home/marcos/fedora
```
Comenzará a descargarse los archivos necesarios y el proceso de instalación comenzará. Vemos que se ha completado correctamente:

<img src="http://i59.tinypic.com/2uq0vf9.png"></img>

<strong> EJERCICIO 4: Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.</strong>

Para ello usaremos lo que instalamos en la primera parte del ejercicio 3. Lo primero que hacemos es movernos a esa carpeta, en mi caso:
```
cd /home/jaulas2/
```
A continuación ejecutamos:
```
chroot trustytahr/
```
Vamos a instalar ahora nano, que es un editor de texto. Para ello ejecutamos:
```
sudo apt-get install nano
```
Para ejecutarlo solo tenemos que escribir:
```
nano
```
Y ya lo tenemos funcionando:

<img src="http://i61.tinypic.com/162vc0.png"></img>

<strong> EJERCICIO 5: Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.</strong>

Obviamente, lo primero que necesitamos es crear un usuario. Para ello, primero debemos situarnos en la carpeta correspondiente. En mi caso es:
```
cd home/jaulas2
```
Ahora podemos ejecutar el comando necesario para añadir un usuario:
```
useradd -s /bin/bash -m -d /home/jaulas2/trustytahr/./home/marcostrusty -c "trusty marcos" -g users marcostrusty
```
Lo más inmediato para comprobar si el usuario se ha creado correctamente junto con su jaula es cerrar la terminal, abrirla de nuevo y escribir:
```
su - marcostrusty
```
En la imagen podemos ver que se ha creado correctamente:

<img src="http://i59.tinypic.com/2h7q7eq.png"></img>

Lo siguiente es instalar nginx. Lo instalamos con:
```
sudo apt-get install nginx
```
Y aquí vemos cómo comienza la instalación:

<img src="http://i57.tinypic.com/302c0sj.png"></img>

<strong> EJERCICIO 6: Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.</strong>
