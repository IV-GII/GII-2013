###Ejercicio 4: Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.

Instalación del sistema Debian 7(último disponible):

    sudo debootstrap --arch=amd64 wheezy /home/jaulas/debian http://ftp.debian.org/debian/

Una vez instalado accedemos al sistema con la siguiente orden:

    sudo chroot <directorio>

En el caso de que estemos situados dentro del directorio basta con sustituir
el directorio por "."
