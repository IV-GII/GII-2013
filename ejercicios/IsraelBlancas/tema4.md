Lista de ejercicios Israel Blancas Álvarez
============================

#TEMA 4: Virtualización ligera usando contenedores#


##Sesión 11-11-2014##

##Ejercicio 1##

#####Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.#####

Tras descargar el software, clonando el repositorio, se entra al directorio y se ejecuta:

``./autogen.sh && ./configure && make && sudo make install``

Puede que lance el siguiente mensaje de error:

```
+ test -d autom4te.cache
+ aclocal -I config
./autogen.sh: 27: ./autogen.sh: aclocal: not found
+ exit 1
```

Para solucionarlo, hay que instalar el paquete "autoconf":
``sudo apt-get install autoconf``

Una vez hecho esto, será necesario comprobar si nuestra máquina es compatible utilizando el comando ``lxc-checkconfig``

![Captura lxc](http://fotos.subefotos.com/f289a0c38382f213b138934705503884o.jpg)
