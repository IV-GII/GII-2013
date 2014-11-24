Lista de ejercicios Israel Blancas Álvarez
============================

#TEMA 3: Introducción a la infraestructura virtual: concepto y soporte físico#


##Sesión 4-11-2014##

##Ejercicio 1##

#####Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en [ServerFault](http://serverfault.com/questions/198135/how-to-mount-an-iso-file-in-linux) nos explican como hacerlo, usando el dispositivo loopback#####

La forma de hacerlo es ejecutnado el comando

`mount -o loop -t imagen imagen.iso /mnt/imagen`

Donde imagen es el fichero a montar.


***

##Ejercicio 2##

#####1. Mostrar los puentes configurados en el sistema operativo#####
#####2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.#####

Los puentes configurados en mi sistema operativo son los siguientes:

![Mostrando los puentes configurados](http://fotos.subefotos.com/21b87e96de8ac8d7a6e024c2d9589373o.jpg)

Los pasos a seguir para crear una interfaz virtual asignada a la tarjeta wifi son:
+ Abrir una terminal
+ Escribir `sudo brctl addbr nuevopuente`
+ Escribir `sudo brctl addif nuevopuente wlan0`
+ Se edita el fichero `/etc/networks/interfaces` para configurar como deseemos la nueva interfaz y se guarda
+ Se añade un default gateway `route add default gw [IP] nuevopuente`
+ Se activa la interfaz aplicando `ifconfig nuevopuente up`



***
***

##Sesión 10-11-2014##

##Ejercicio 3##

#####1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.#####
#####2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.#####

En primer lugar hay que instalar debootstrap:

``sudo apt-get install debootstrap``

He intentado descargar la versión que hay en el guión de la asignatura. El software devolvía un fallo, por lo que he buscado otra versión del SO. Además, he creado un usuario llamado "jaulas".

``sudo debootstrap --arch=i386 saucy /home/jaulas/saucy32/ http://archive.ubuntu.com/ubuntu``

Tras instalarlo y realizar todas las configuraciones, nos devolverá el siguiente mensaje:

``I: Base system installed successfully.``

En cuanto a la creación de un sistema Fedora dentro de Debian, he instalado rinse e instalado Fedora mediante este sistema:

``sudo apt-get install rinse``

``sudo rinse --arch=amd64 --distribution fedora-core-6 --directory /home/jaulas/fedora/``

Y devolverá la siguiente salida:

'''
Installed: dhclient.x86_64 12:3.0.5-5.fc6
Cleaning up
Final tidy...
Installation complete.
'''



***

##Ejercicio 4##

#####Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.#####

En primer lugar, entramos en alguna de las jaulas creadas en el ejercicio anterior:

``sudo chroot /home/jaulas/saucy32``

Una vez dentro, seremos el usuario "root". Montaremos "/proc":

``mount -t proc proc /proc``

Instalamos el paquete en español como se indica en el guión:

``apt-get install language-pack-es``

Como se pide ejecutar una aplicación, he instalado "curl":

``sudo apt-get install curl``

![Captura curl](http://fotos.subefotos.com/37704b8350f6b6218785caf67588890co.jpg)



***

##Ejercicio 5##

#####Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.#####

Al tratar de instalar NGINX en la jaula de los ejercicios anteriores, podemos ver que no existe un candidato para la instalación, por lo que hay que añadir el repositorio.

1. Instalamos un editor de texto no gráfico (por ejemplo "nano").
2. Editamos la lista de repositorios ``nano /etc/apt/sources.list``
3. Añadimos los repositorios ``deb http://nginx.org/packages/ubuntu/ saucy nginx`` y ``deb-src http://nginx.org/packages/ubuntu/ saucy nginx``
4. Instalamos el paquete wget ``apt-get install wget``
5. Descargamos la clave del repositorio ``wget http://nginx.org/keys/nginx_signing.key``
6. Añadimos la clave ``apt-key add nginx_signing.key``
7. Actualizamos la lista de repositorios ``apt-get update``
8. Instalamos NGINX ``apt-get install nginx``
9. Ejecutamos el servicio ``service nginx start``
10. Desde fuera de la jaula, accedemos a "localhost" utilizando un navegador y comprobamos que funciona (viendo el mensaje de bienvenida de NGINX)



***

##Ejercicio 6##

#####Crear una jaula y enjaular un usuario usando 'jailkit', que previamente se habrá tenido que instalar.#####

Tras acceder a la página de jailkit y decargarlo, ejecutamos los siguientes comandos

```
tar -xzvf jailkit-2.17.tar.gz
cd jailkit-2.17
sudo ./configure && make && sudo make install
```

Se crea una nueva jaula y se inicia con jailkit:
``sudo mkdir /home/jaulas/jailkit
sudo jk_init -v -j /home/jaulas/jailkit jk_lsh basicshell netutils editors``

Se crea un usuario y "se enjaula":
``sudo adduser enjauladojailkit
sudo jk_jailuser -m -j /home/jaulas/jailkit enjauladojailkit
``

Tras esto, ya tendremos a nuestro usuario enjaulado.
