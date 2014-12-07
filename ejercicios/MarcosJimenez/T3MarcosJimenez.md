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
<br>
<strong> EJERCICIO 3: Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda 
ejecutar más adelante. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.</strong>

<strong> EJERCICIO 4: Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar 
alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.</strong>

<strong> EJERCICIO 5: Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.</strong>

<strong> EJERCICIO 6: Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.</strong>
