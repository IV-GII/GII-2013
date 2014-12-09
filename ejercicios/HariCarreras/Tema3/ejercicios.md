###Ejercicio 1 ###
He creado una imagen iso de la carpeta de apuntes gracias al tutorial y lo he montado en un espacio de nombres llamado periquito:
![captura](http://s25.postimg.org/yfk86y3zz/1_1.png)
![captura](http://s25.postimg.org/apusi95mn/1_2.png)

###Ejercicio 2 ###
Primero no tenia ningún puerto:
![captura](http://s25.postimg.org/hhl7l3um7/2_1.png)

Después he creado un puente llamado miPuente y o he asignado a la interfaz eth0
![captura](http://s25.postimg.org/buounms3j/2_2.png)
![captura](http://s25.postimg.org/c8q6n8c73/2_3.png)
	
###Ejercicio 3###
Primero he instalado el debootstrap 
sudo apt-get install debootstrap

Una vez instalado he creado una nueva distro de Ubuntu de 32 bits.

sudo debootstrap --arch=i386 saucy /home/haricarreras/saucy32/ http://archive.ubuntu.com/ubuntu
![captura](http://s11.postimg.org/mujak28tb/3_1.png)


He instalado rise con:

sudo apt-get install rinse

Compruebo las distribuciones que hay e instalo una:

![captura](http://s11.postimg.org/704ea6k2n/3_2.png)

###Ejercicio 4###

Uso la distro creada en el ejercicio 3 de 32 bits, monto el sistema de ficheros e instalado el paquete en español:

$ sudo chroot /home/haricarreras/saucy32
$ mount -t proc proc /proc
$ apt-get install language-pack-es

Le he instalado el compilador de c++ g++
$ sudo apt-get install g++

He creado el helloworld de c++ y lo he compilado y ejecutado:

![captura](http://s11.postimg.org/55rjsfx27/4_1.png)

###Ejercicio 5###
Como ya estoy en una la jaula, procedo a instalar nginx

$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install nginx

También he instalado curl para poder comprobar que nginx está funcionando:

$ sudo apt-get install curl
$ nging start
$ curl localhost

![captura](http://s11.postimg.org/71ec3llwf/5_1.png)

###Ejercicio 6#

He instalado jailkit y creado con él una jaula:
No he podido crear la jaula en /home/haricarreras ya que la carpeta debe pertener a root. Asi que la he creado en /opt/

$ sudo mkdir /opt/jaula
$ sudo jk_init -v -j /opt/jaula jk_lsh basicshell netutils editors

Creo un nuevo usuario "usuario" y lo meto en la jaula
![captura](http://s11.postimg.org/u0b1mihwf/6_1.png)

$ sudo adduser usuario
$ sudo jk_jailuser -m -j /opt/jaula/ usuario





