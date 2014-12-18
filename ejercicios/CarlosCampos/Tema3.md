#Carlos Campos Fuentes
##Virtualización ligera usando contenedores

###Ejercicio 1

Antes de empezar, necesitamos crear un espacio de nombres:

    sudo unshare -u /bin/bash  
    hostname temporal  

Una vez creado, tenemos que montar la imágen, para ello , creamos la carpeta donde vamos a montar la imágen, llamada **ubuntu** y ejecutamos el siguiente comando para montar la imagen en dicho directorio:

    sudo mkdir /mnt/ubuntu
    sudo mount -o loop ubuntu-14.04.1-server-i386.iso /mnt/ubuntu

###Ejercicio 2
######Apartado 1

Con el comando brctl show, podemos ver los puentes que hay configurados:  

    #brctl show
    bridge name	bridge id		STP enabled	interfaces

######Apartado 2  

Para crear el puente, debemos de ejecutar el siguiente comando:

    #brctl addbr tempbridge

Añadimos nuestra wifi al puente con el comando:

    #brctl addif tempbridge wlan0

Y por último, para activar dicho puente, al igual que cualquier interfaz de red:

    #ifconfig tempbridge up

###Ejercicio 3
######Apartado 1
Antes de nada, debemos de instalar debootstrap en nuestro sistema, para ello, lo instalamos como cualquier otro paquete:

    #sudo apt-get install debootstrap

Para crear la nuestra distro con debootstrap, debemos de lanzar el siguiente comando:

    #sudo ebootstrap --arch=i386 saucy /home/ccampos/saucy32/ http://archive.ubuntu.com/ubuntu

El proceso puede durar bastante tiempo.

\* Como en mi caso, la máquina virtual es de 32 bits, tengo que especificar que la máquina virtual es de 32 bits y no de 64bits

######Apartado 2
Instalamos **rinse** como cualquier otro paquete:

    #sudo apt-get install rinse

Es posible que aparezcan muchas dependencias, las instalamos  de todas formas.

Para ver las distribuciones disponibles, podemos verlas en el directorio **/etc/rinse/**.

    #ls /etc/rinse/

Creamos una distro de fedora con el siguiente comando:

    #rinse --arch=i386 --distribution fedora-core-6 --directory /home/ccampos/fedora

###Ejercicio 4
Usando la distribucción creada en el **apartado 1** del **ejercicio 3**.

    #sudo chroot /home/ccampos/saucy32
    #mount -t proc proc /proc
    #apt-get install language-pack-es

Una vez montado el directorio proc e instalado el paquete de idioma para evitar que nos de algún error, instalamos python para ejecutar un hola mundo.

    #apt-get install python
    #echo print "'Hola mundo'" > holamundo.py | python holamundo.py
    Hola mundo

###Ejercicio 6
En primer lugar, instalamos los paquetes necesarios (gcc y make) para poder descargar e instalar jailkit.

    wget http://olivier.sessink.nl/jailkit/jailkit-2.17.tar.gz
    tar -xzvf jailkit-2.17.tar.gz
    cd jailkit-2.17
    ./configure && make %% sudo make install

Creamos la jaula.

    sudo mkdir /home/ccampos/aux
    jk_init -v -j /home/ccampos/aux jk_lsh basicshell netutils editors
