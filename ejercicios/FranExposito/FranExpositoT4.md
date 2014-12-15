##Ejercicios Tema 4. [Francisco Javier Expósito Cruz](http://github.com/franexposito)

##Virtualización ligera usando contenedores.
###Ejercicio 1.
Para ello instalamos *LXC* desde el repo:

  sudo apt-get install lxc  


###Ejercicio 2.
Para ello ejecutamos el siguiente comando:  

    sudo ifconfig -a  

En mi caso, se ha creado la red **lxcbr0**  

###Ejercicio 3.
######Apartado 1.
En primer lugar ejecutamos el siguiente comando:  

    sudo lxc-create -t debian -n debiancont  

![imagen1](imagenes/t4e2_a.png)  

Para ejecutar:  

  sudo lxc-start -n debiancont  

![imagen2](imagenes/t4e2_b.png)  

######Apartado 2.
Instalado utilizando el script proporcionado en la github por [Gentoo](https://github.com/globalcitizen/lxc-gentoo/blob/master/lxc-gentoo).  

###Ejercicio 4.
Para instalar **lxc-panel** utilizaremos el comando proporcionado desde la [web oficial]():

  wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash  

![imagen3](imagenes/t4e4_a.png)

![imagen4](imagenes/t4e4_b.png)  

Para restringir los recursos debemos seleccionar el container deseado y modificar los parametros según nuestras necesidades:  

![imagen5](imagenes/t4e4_c.png)  


###Ejercicio 5.

###Ejercicio 6.  
Instalamos **juju**:  

  sudo add-apt-repository ppa:juju/stable  

  sudo apt-get update && sudo apt-get install juju-core  

Iniciamos **juju**  

  juju init

  juju bootstrap  

Tras esto instalamos **mediawiki** y **mysql**:  

  juju deploy mediawiki  

  juju deploy mysql  

  juju add-relation mediawiki mysql  
  

###Ejercicio 7.
