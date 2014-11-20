
#Ejercicio 1#
##  Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente). ##

Instalaremos virtualenv para Python a través de pip.

Para ello primero instalamos pip:

~~~
sudo apt-get install python-pip
~~~

y despues instalamos virtualenv:

~~~
sudo pip virtualenv
~~~

Y creamos el entorno virtual:

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema2/ejercicio1.png)


#Ejercicio 2#
##Darse de alta en algún servicio PaaS tal como Heroku,Nodejitsu u OpenShift.##

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema2/ejercicio2.png)


#Ejercicio 3#
##Crear una aplicación en OpenShift y dentro de ella instalar WordPress.##

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema2/ejercicio3_1.png)


![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema2/ejercicio3_2.png)


#Ejercicio 4#
##Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.##
Para crear el script vamos a Herramientas->Editor de secuencias de comandos... y editamos la función:

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema2/ejercicio4_1.png)


Ejecutamos y nos crea el documento:

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema2/ejercicio4_2.png)

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema2/ejercicio4_3.png)


#Ejercicio 5#
##Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.##

Un sistema de automatización de la construcción de una aplicación en python es buildbot.

Buildbot es un framework para la automatización de compilación de software. 

Podemos instalarlo con pip con el siguiente comando:

~~~
pip install buildbot
~~~


#Ejercicio 6#
##Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.##

En OpenShift el fichero de automatización se encuentra en .openshift/action_hooks/build.

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema2/ejercicio6.png)


#Ejercicio 7#
##Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.##

El entorno de desarrollo virtualenv dispone de entornos para realizar pruebas, para ello ejecutamos el siguiente comando:

~~~
python setup.py prueba
~~~
