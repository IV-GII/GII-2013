#Ejercicio 3

#### 1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.

Primero debemos instalar la utilidad debootstrap:
	sudo apt-get install debootstrap
    
Creamos una carpeta en la cuál vamos a alojar las jaulas. Hay que recordar que una jaula no es más que una "emulación" de un sistema de ficheros nuevo, en la que un usuario enjaulado sólo verá lo que haya dentro de esa jaula (es decir, si creamos la carpeta de la jaula en /tmp/jaulas, para un usuario enjaulado, la carpeta /tmp/jaulas será la raíz). En nuestro caso, creamos una carpeta en nuestro home, y entramos a esa carpeta:

	mkdir $HOME/jaulas
    cd $HOME/jaulas

Ahora ejecutamos la orden:

	sudo debootstrap sid .

Tardará bastante en crearla, ya que tiene que descargar varios ficheros la primera vez.Por último, para entrar en la jaula:

	sudo chroot
    
####2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse

Primero debemos instalar la utilidad Rinse
	
	sudo apt-get install rinse
    
Para ver las distribuciones que podemos instalar:

	rinse --list-distributions
    
Vamos a bajarnos fedora, y a instalarlo dentro de la jaula que hemos hecho en el apartado 1 del ejercicio. Para ello:

	sudo rinse --arch=i386 --distribution fedora-core-4 --directory /home/joseantonio/jaulas
