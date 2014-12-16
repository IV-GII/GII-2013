#Ejercicio 4

####  Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.

Primero instalamos Debian:

	sudo debootstrap --arch=amd64 wheezy /home/joseantonio/jaulas/debian http://ftp.debian.org/debian/
    
Una vez instalado Debian, accedemos a él:

	sudo chroot /home/joseantonio/jaulas/debian
    
Una vez dentro, podemos descargarnos g++ para poder compilar códigos fuentes de C++ y ejecutarlos:

	sudo apt-get install g++

Suponiendo que el código fuente esté en un fichero llamado codigo.cpp, compilamos y ejecutamos:

	g++ -o programa codigo.cpp
    ./programa