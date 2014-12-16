###Ejercicio 1 ###
Para instalar la ultima version
$ sudo apt-get update
$ sudo apt-get install lxc
Para comprobar que está correctamente instalado:
$ lxc-checkconfig
![captura](http://s25.postimg.org/p2ahyvxz3/1_1.png)

###Ejercicio 2 ###
He creado una caja con ubuntu:
![captura](http://s25.postimg.org/cjtwib0zj/2_1.png)
Y he comprobado las interfaces que tiene con 
$ ifconfig
![captura](http://s25.postimg.org/a520xvkqn/2_2.png)
Por lo que vemos que la interfaz que se ha creado son lxcbr0 y vethFCVNLU.

###Ejercicio 3 ###

He instalado un contenedor en debian con:
$ sudo lxc-create -t debian contenedor-debian
![captura](http://s25.postimg.org/67er8gxxb/3_1.png)

###Ejercicio 4 ###
He usado el instalador automático, para ello he tenido que ser root:
$ sudo su
$ wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash
Me he metido en el servidor local:
![captura](http://s14.postimg.org/ewtsmzmrl/4_1.png)
Y desde aqui puedo controlar todos mis contenedores
![captura](http://s14.postimg.org/j8iebztoh/4_2.png)
He jugado un poco con ellos para restringuirles los recursos:
![captura](http://s14.postimg.org/qn7q4dfk1/4_3.png)
