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

![imagen1](t4e2_a.png)  

Para ejecutar:  

  sudo lxc-start -n debiancont  

![imagen2](t4e2_b.png)  

######Apartado 2.
Utilizaremos el script proporcionado en la github por [Gentoo](https://github.com/globalcitizen/lxc-gentoo/blob/master/lxc-gentoo):  

  mv lxc-gentoo /usr/share/lxc/templates/  
