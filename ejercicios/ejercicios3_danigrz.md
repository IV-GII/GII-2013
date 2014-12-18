Ejercicio 1. Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback

Como mi equipo no dispone de unidad de CD, creamos una carpeta donde montaremos la ISO y luego crearemos el espacio de nombres.

![Imgur](http://i.imgur.com/vr0o2Or.png)

Una vez realizado esto, hacemos una copia del CD montado con el siguiente comando.

![Imgur](http://i.imgur.com/ndWn01B.png)

	dd if=/mediaIV/cd of=nombreArchivoISO.iso bs=512

Donde /dmediaIV/cd es el lugar donde está montado nuestro CD (por defecto es esa ruta), y cdrom.iso es el nombre de la iso creada.

Una vez hecho esto creamos el espacio de nombres teniendo privilegios de root:

	unshare --mount /bin/bash

Y montamos la imagen de disco

	mount -o loop disk.iso /mnt/disk
	
![Imgur](http://i.imgur.com/GpIB0ZZ.png)
	
Ahora tenemos la imagen montada sólo en modo lectura y accesible desde sólo esa terminal




Ejercicio 2. 
a) Mostrar los puentes configurados en el sistema operativo.

Instalamos brctl:

	sudo apt-get install bridge-utils
![Imgur](http://i.imgur.com/0UtoaVl.png)

Para ver los puentes configurados:

	brctl show
![Imgur](http://i.imgur.com/8MJjyjw.png)

b) Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

Creamos la interfaz
	
 ![Imgur](http://i.imgur.com/RgTrktb.png)

Como tenia problemas al asignar la interfaz de wlan0 he asignado eth0:

	sudo brctl addif virtualInterface eth0
![Imgur](http://i.imgur.com/yD9bnbt.png)

Una vez añadido, levantamos la interfaz

	sudo ifconfig interfazVirtual up

Podemos ver con la orden ifconfig el estado de la interfaz virtual

  ![Imgur](http://i.imgur.com/mD7XiE5.png)
  
  
Ejercicio 3

a) Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.

Instalamos debootsrap
 ![Imgur](http://i.imgur.com/OyjWgU8.png)
 
Creamos la carpeta dónde se enjaulará a los usuarios
 ![Imgur](http://i.imgur.com/Lhgq701.png)
 
Ahora ejecutamos el siguiente comando
 ![Imgur](http://i.imgur.com/kygU6X4.png)
 
 Una vez realizado ésto podemos entrar a la jaula con el comando 
 	sudo chroot .
 En la siguiente imagen se muestra cómo esta montado el sistema de archivos en la jaula y como se ve desde dentro
 
  ![Imgur](http://i.imgur.com/3G3XqJr.png)
  
b) Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse

Para instalar rinse usamos el siguiente comando
	sudo apt-get install rinse
	
Para ver las distribuviones disponibles usamos
	rinse --list-dristributions

Para instalar Fedora primero creamos una carpeta dentro de la jaula llamada fedora
	mkdir fedora
Una vez hecho esto, descargamos e instalamos fedora-core-7

	sudo rinse --arch=amd64 --distribution fedora-core-7 --directory ~/jaula/fedora
	![Imgur](http://i.imgur.com/fXFUyJK.png)
	

	

