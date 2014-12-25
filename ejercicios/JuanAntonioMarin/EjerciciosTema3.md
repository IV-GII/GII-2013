##Tema 3

###Ejercicio 1
Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback.

Simplemente en la consola: 

````
mount -o loop disk.iso /mnt/disk 
````

##Ejercicio 2

Mostrar los puentes configurados en el sistema operativo:

Primero instalo bridge-utils

````
sudo apt-get install bridge-utils
````

Para ver los puentes configurados:

````
brctl show
````
<img src"http://i59.tinypic.com/2iw4txw.png"></img>


Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

Primeramente creo el puente:
````sudo brctl addbr puente````
Ahora como no tengo la wlan0 por la maquina virtual asigno a eth0
````sudo brctl addif puente eth0````
Configuro el archivo interfaces de etc/network/
````route add default gw 192.168.212.146 puente```
y finalmente lo lanzo:
````ifconfig puente up````

##Ejercicio 3

Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.

Primero instalo el debootstrap:

````sudo apt-get install debootstrap````

Al usar 

````sudo debootstrap --arch=amd64 quantal /home/juanaco/quantal/ http://archive.ubuntu.com/ubuntu````

me da fallo (File getting release).


Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.

Instalo Rinse:

````
sudo apt-get install rinse
````

Ejercuto a orden:

````
sudo rinse --arch=amd64 --distribution fedora-core-6 --directory /home/juanaco/fedora/
````

Y me termina la instalacion correctamente.

###Ejercicio 4:

Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla. 

Primero entramos en la jaula anterior:

````
sudo chroot /home/juanaco/saucy32
````
Montamos el proc:

````
mount -t proc proc /proc
````

Y ejecutamos para instalar el paquete de lenguajes en español, dado que la version que he bajado ya estaba en español me dice que ya esta en su versión mas reciente: 

````
apt-get install language-pack-es
````

Me pide instalar curl

````
apt-get install curl
````

Simplemente ejecuto la herramienta.


###Ejercicio 5:


###Ejercicio 6:


Bajo Jailkit desde: http://olivier.sessink.nl/jailkit/index.html#download

Descomprimo en el escritorio, y sigo las instrucciones del readme de Installs:

````
./configure
make
sudo su (Cambio este comando para poder entrar como root)
make install
````

Creo el directorio y hago el chown:

````
mkdir -p /dorada //Dentro del directorio
chown -R root:root /directorioseguro/
````

````
jk_init -v -j /directorioseguro/juanaco/dorada jk_lsh basicshell netutils editors
````

Ahora ya tenemos el usuario enjaulado.