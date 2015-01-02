###Ejercicio 3: 
####1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante. 

Situándonos en el directorio dónde queremos realizar la instalación (en este caso /home/jaulas/sid), ejecutamos:

	sudo debootstrap sid .

Para acceder introducimos:

	sudo chroot .

####2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.

Instalamos Rimse:
	sudo apt-get install rinse

Con la siguiente orden podemos ver las distribuciones que podemos instalar:

	rinse --list-distributions

Ahora procedo a instalar el sistema fedora-core-4 (previamente he creado el directorio donde se alojará):

    sudo rinse --arch=i386 --distribution fedora-core-4 --directory /home/jaulas/fedora
