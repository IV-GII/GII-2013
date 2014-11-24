#Técnicas de virtualización

##Ejercicio 1

**Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback**

Lo primero que debemos hacer tal como indica el enunciado del ejercicio es crear un espacio de nombres, para ello seguimos las instrucciones del guión:

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio1-1.png)

A continuación, montamos la imagen ISO siguiendo las instrucciones de [ServerDefault](http://serverfault.com/questions/198135/how-to-mount-an-iso-file-in-linux):

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio1-2.png)

##Ejercicio 2

**1.Mostrar los puentes configurados en el sistema operativo.**

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio2-1.png)

**2.Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.**

Creamos un nuevo punto de red 

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio2-2.png)

Lo añadimos a una de nuestras interfaces disponibles 

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio2-3.png)

Por último, para activarlo debemos ejecutar:

*sudo ifconfig puenteRedIV up*

##Ejercicio 3:

**1.Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.**
**2.Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.**

Instalamos debootstrap

*sudo apt-get install debootstrap*

Tras fallarme el comando del guión, he utilizado uno encontrado en el directorio de ejercicios de la asignatura

*sudo debootstrap --arch=i386 saucy /home/jaulas/saucy32/ http://archive.ubuntu.com/ubuntu*

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio3-1.png)

Una vez hecho esto, listamos las distribuciones disponibles e instalamos una de ellas

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio3-2.png)

La instalación fue exitosa

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio3-3.png)

##Ejercicio 4:

**Instalar algún sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.**

Accedemos a una de las jaulas creadas anteriormente

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio4-1.png)

Montamos el sistema de ficheros y, siguiendo la recomendación del guión, instalamos el paquete en español 

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio4-2.png)

Por último, vamos a instalar el editor "nano" para comprobar que funciona

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio4-3.png)

##Ejercicio 6:

**Crear una jaula y enjaular un usuario usando jailkit, que previamente se habrá tenido que instalar.**

Descargamos, descomprimimos e instalamos jailkit

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio6-1.png)

Creamos una jaula nueva e iniciamos en ella jailkit

*sudo mkdir /home/jaulas/jaula_jailkit*

*sudo jk_init -v -j /home/jaulas/jaula_jailkit jk_lsh basicshell netutils editors*

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_3/imagenes/ejercicio6-2.png)

Por último, creamos un nuevo usuario y lo "enjaulamos"

*sudo adduser usuario_jailkit*

*sudo jk_jailuser -m -j /home/jaulas/jaula_jailkit usuario_jailkit*












