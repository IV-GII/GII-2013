##TEMA 3

#VIRTUALIZACIÓN

#Clase del 4 de Noviembre de 2014

* [+]Ejercicio 1
 - A) Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback.

Lo primero que tenemos que hacer es crear un espacio de nombres con:

    unshare -u /bin/bash

y cambio el nombre con:

    hostname ejercicio1

con lo que ahora "ejercicio1" será nuestro nombre del sistema.

Loa segundo es crear la carpeta en "/mnt", para ello hacemos:

    mkdir disk
    chmod 7777 -R disk

Ahora lo que hacemos es montar la imagen ".iso" en esa carpeta, situandonos previamente en la carpeta donde esta la imagen:

    mount -o loop - ubuntu-12.04.4-server-i386.iso /mnt/disk

Aquí esta el [ejemplo](https://www.dropbox.com/s/a4rgma5oq2xd59x/Captura%20de%20pantalla%202014-11-17%20a%20la%28s%29%2018.00.58.png?dl=0) que yo he realizado. 


* [+]Ejercicio 2
 - A) Mostrar los puentes configurados en el sistema operativo.

Lo primero que debemos de hacer es [installar](https://www.dropbox.com/s/ldc9ye4vdfdfa7e/Captura%20de%20pantalla%202014-11-17%20a%20la%28s%29%2018.08.37.png?dl=0)
la utilidad para poder mostrar la información:

    apt-get install bridge-utils

Ahora para [consultarlo](https://www.dropbox.com/s/68veyuua9xtg4le/Captura%20de%20pantalla%202014-11-17%20a%20la%28s%29%2018.14.48.png?dl=0) usamos el siguiente comando:

    brctl show

 - B) Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

Lo primero que debemos de hacer es crear la interfaz virtual con:

    brctl addbr interfazejercicio2

Lo segundo es asignar la nueva interfaz creada "interfazejercicio2" a "eth0" con:

    brctl addif interfazejercicio2 eth0

Una vez realizado todo esto, vemos que se ha asignado todo correctamente con:

    brctl show

[Ver Proceso](https://www.dropbox.com/s/upz9ttfzfhrypns/Captura%20de%20pantalla%202014-11-17%20a%20la%28s%29%2018.20.53.png?dl=0)

#Clase del 10 de Noviembre de 2014

* [+]Ejercicio 3
 - A) Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.

 El primer paso que tenemos que dar es instalar [Debootstrap](https://www.dropbox.com/s/i7mr26g6ea9qm4w/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2013.23.04.png?dl=0), para ello usamo la siguiente orden:

    apt-get install debootstrap

Una vez ejecutada la orden comenzará el proceso de [descarga e instalación](https://www.dropbox.com/s/647vckmf8beiybf/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2013.23.26.png?dl=0).

Sigo los pasos del ejemplo usado en las transparecias del tema pero no encuntra [quantal](https://www.dropbox.com/s/18sszawhl77uhvt/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2013.32.49.png?dl=0), por lo que proceso a usar "lucid".

Para ello sigo los pasos seguidos anteriormente con en el ejemplo de quantal, así que creamos los [directorios](https://www.dropbox.com/s/gzobsb4o5w0wc9e/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2013.42.57.png?dl=0) siguientes donde se realizara la instalación:

    home/jaulas/lucid

Por último ejecutamos las orden:

    debootstrap --arch=amd64 lucid /home/jaulas/lucid/ http://archive.ubuntu.com/ubuntu

Tras un rato de espera se termina el proceso y se nos quedaría como se [muestra](https://www.dropbox.com/s/mhtyxhtcffld6hs/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2013.55.43.png?dl=0), siempre que se muestre el mensaje de "Base system installed successfully". 

 - B) Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.

El primer paso que debemos de dar es instalar rinse, para ello [usamos](https://www.dropbox.com/s/ez0quh68jpuxg6e/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2016.10.41.png?dl=0) la siguiente orden:

    apt-get install rinse

Después tenemos que ver la lista de sistemas que hay disponibles con la [orden](https://www.dropbox.com/s/lbumgl8ip3lij2z/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2016.15.24.png?dl=0):

    rinse --list-distributions

Una vez localizado el sistema que vamos a usar, creamos un [directorio](https://www.dropbox.com/s/ezyq33qf3cfut5m/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2016.13.59.png?dl=0) nuevo donde meteremos nuestro sistema Fedora:

    /home/jaulas/fedora

Ahora ejecutamos la siguiente orden y comenzara de [descargar](https://www.dropbox.com/s/qiqp4u3ws8noy7x/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2016.19.40.png?dl=0) la distribución elegida:

    rinse --arch=amd64 --distribution fedora-core-4 --directory /home/jaulas/fedora

Tras un rato esperando a que se descargue por completo la distribución selecionada, nos aparecerá lo siguiente:
[Ver](https://www.dropbox.com/s/osdoao6noymb8vd/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2016.26.53.png?dl=0)

* [+]Ejercicio 4
 - A) Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.

El primer paso es usar "chroot" para poder entrar en la jaula, usando el siguiente comando:

    chroot /home/jaulas/fedora

Después ejecutamos el comando "top", pero nos da un [error](https://www.dropbox.com/s/1si50v7wagmur13/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2016.34.02.png?dl=0).

Para solucionar dicho problema y poder visualizar el listado de directorios, usamos el siguiente comando:

    mount -t proc proc /proc

Una vez realizado este paso, volvemos a ejecutar la orden [top](https://www.dropbox.com/s/vogfekhjj4jbw2s/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2016.39.40.png?dl=0).

Ahora instalamos un editor de texto, en mi caso uso "nano":

    yum install nano

Ejecutamos [nano](https://www.dropbox.com/s/wphygjj43cq0hyb/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2016.56.35.png?dl=0) y creamos un pequeño programa.

Después lo ejecutamos con:

    python hola.py

[Ver](https://www.dropbox.com/s/ovyp0l469daft7x/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2016.57.45.png?dl=0)

* [+]Ejercicio 5
 - A) Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.

Lo primero es entrar en la jaula que vamos a usar para instalarlo:

    chroot /home/jaulas/lucid

Como segundo paso, ejecutamos [apt-get install curl](https://www.dropbox.com/s/ytsi73smv3p2yyt/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2017.08.50.png?dl=0).

El tercer paso para poder instalar "nginx" es el [siguiente](https://www.dropbox.com/s/nal29eerjdk54rv/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2017.13.54.png?dl=0).

Por último ejecutamos "nginx" con:

    service start nginx

* [+]Ejercicio 6
 - A) Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.

Lo primero que debemos de hacer es instalar "jailkit", para ello tenemos que hacer es [ejecutar](https://www.dropbox.com/s/ye3pqyjiznv3xm5/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2017.28.53.png?dl=0):

    wget http://olivier.sessink.nl/jailkit/jailkit-2.16.tar.gz

Después [descomprimimos](https://www.dropbox.com/s/b22tnaqg5fmwvco/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2017.30.11.png?dl=0) el archivo descargado:

    tar -xzvf jailkit-2.16.tar.gz

Cuando ya lo hayamos descomprimido vamos a la carpeta de "jailkit" y ejecutamos: 

    ./configure
    make
    sudo make install

Ahora vamos a seguir las transparencias de clase:

    sudo mkdir -p /seguro/jaulas/dorada
    sudo chown -R root:root /seguro

[Ver](https://www.dropbox.com/s/cv3vrkebit4emsn/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2017.37.13.png?dl=0)

Una vez realizado lo anterior procedemos ha ejecutar lo siguiente:

    sudo jk_init -v -j /seguro/jaulas/dorada jk_lsh basicshell netutils editors

Tras unos segundos de espera, nos aparecerá lo siguiente:
[Ver](https://www.dropbox.com/s/ml0xnp27r0acw5o/Captura%20de%20pantalla%202014-11-18%20a%20la%28s%29%2017.41.08.png?dl=0)

Ahora creamos un usuario y lo enjaulamos dentro de su jaula:

    useradd ejercicio6
    jk_jailuser -m -j /seguro/jaulas/dorada ejercicio6

Se le cambia la contraseña al usuario:

    passwd usuarioIV

Por último editamos el archivo de configuración del usuario en este caso "ejercicio6", cambiando "jk_lsh" por "/bin/bash":

    /seguro/jaulas/dorada/etc/passwd
