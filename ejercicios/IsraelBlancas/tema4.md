Lista de ejercicios Israel Blancas Álvarez
============================

#TEMA 4: Virtualización ligera usando contenedores#


##Sesión 11-11-2014##

##Ejercicio 1##

#####Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.#####

Hay que realizar la instalación desde el repositorio:

``sudo apt-get install lxc``

Una vez hecho esto, será necesario comprobar si nuestra máquina es compatible utilizando el comando ``lxc-checkconfig``

![Captura lxc](http://fotos.subefotos.com/f289a0c38382f213b138934705503884o.jpg)



***

##Ejercicio 2##

#####Comprobar qué interfaces puente se han creado y explicarlos.#####

Tras ejecutar `ipconfig -a`, veo que se han creado dos nuevas interfaces:
+ lxcbr0
+ veth06TK6W

Y ejecutando `brctl show`
+ lxcbr0

De esta forma el contenedor tiene acceso a Internet.
