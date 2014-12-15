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

###Ejercicio 3.
Para instalar **lxc-panel** utilizaremos el comando proporcionado desde la [web oficial]():

  wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash  

![imagen3](t4e3_a.png)  
