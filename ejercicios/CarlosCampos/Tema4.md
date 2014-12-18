#Carlos Campos Fuentes
##Virtualización ligera usando contenedores

###Ejercicio 1
Hay que instalar **lxc**, para ello, como siempre ejecutamos:

    # sudo apt-get install lxc

Para comprobar si nuestra máquina es compatible o no, debemos de utilizar el comando **lxc-checkconfig**.

![Imgur](http://i.imgur.com/X3xYNxx.png)

Tal y como podemos ver en la captura de pantalla anterior, nuestra máquina es compatible con **lxc**.

###Ejercicio 2
Se a creado una nueva interfaz, llamada **lxcbr0**, en la cual la podemos ver ejecutando **ifconfig -a** y **brctl show**.

Interfac utilizada para que el contenedor pueda tener acceso a la red.

###Ejercicio 3
Para crear el contenedor Debian, solo tenemos que ejecutar.

    # sudo lxc-create -t debian -n ubuntu

Para ejecutarlo basta con ejecutar:

    # sudo lxc-start -n ubuntu
    * Tanto el usuario como la contraseña por defecto es ubuntu

###Ejercicio 4
Para instalar **lxc-webpanel**, siguiendo el [tutorial](http://lxc-webpanel.github.io/install.html) que hay en su web, ejecutamos el siguiente comando:

    # wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash

Entrando a **http://< ip-de-la-maquina >:5000** con usuario y contraseña **admin** accedemos al portal de administración y configuración del contenedor tal y como podemos ver en las siguientes imágenes.

![Imgur](http://i.imgur.com/QAZYm3W.png)
![Imgur](http://i.imgur.com/Qw6EOZf.png)

###Ejercicio 5


###Ejercicio 6
Hay que instalarlo según nos dice en la [página web](https://jujucharms.com/get-started) de juju.

    # sudo add-apt-repository ppa:juju/stable
    # sudo apt-get update
    # sudo apt-get install juju-quickstart
