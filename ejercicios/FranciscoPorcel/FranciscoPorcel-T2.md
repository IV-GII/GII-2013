# Tema 2

## Ejercicio 1

#### Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).

Voy a instalar el entorno "virtualenv":

![Instalando virtualenv](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/1_1.png)

## Ejercicio 2

#### Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.

Me doy de alta en "OpenShift":

![Instalando virtualenv](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/2_1.png)

## Ejercicio 3

#### Crear una aplicación en OpenShift y dentro de ella instalar WordPress. 

En primer lugar nos logueamos en OpenShift. Una vez hecho esto elegimos la opción "Crear mi primera app". Nos saldrá una pantalla como la siguiente. En esta pantalla buscaremos Wordpress en el cuadro de búsqueda para instalarlo en nuestra app.

![Primera app en openshift](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/3_1.png)

En la siguiente pantalla deberemos rellenar un formulario en el que se nos pedirá entre otras cosas el nombre de dominio de nuestra app:

![Primera app en openshift](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/3_2.png)

Finalemte podemos observar como se ha creado el sitio con éxito:

![Primera app en openshift](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/3_3.png)

Si entramos en el sitio web, podemos ver cómo podemos empezar a configurarlo:

![Primera app en openshift](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/3_4.png)

Una vez realizada la configuración, accederemos como editores a la web y podremos comenzar a editarlo:

![Primera app en openshift](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/3_5.png)


## Ejercicio 4

#### Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama. 

Lo primero que hacemos es clickear en Herramientas->Editor de secuencia de comandos... Una vez ahí podemos cambiarle el nombre al menú y definir una función:

![Editor de secuencia de comandos](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/4_2.png)

Podemos clickear en la función creada (Hola mundo) y observar que funciona correctamente:

![Prueba de la función](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/4_3.png)

##Ejercicio 5

#### Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.

Hasta ahora, el único sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que he usado ha sido Make. Se puede ver en las siguientes dos imágenes un ejemplo de él:

![Make 1](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/5_1.png)

![Make 2](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/5_2.png)

##Ejercicio 6

#### Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma. 

Ya que hemos usado Openshift voy a describir el fichero de automatización. Podemos saber cómo hacerlo desde la página oficial de Openshift:

[Openshift](https://developers.openshift.com/en/getting-started-client-tools.html#ubuntu)

En primer lugar escribimos:

sudo apt-get install ruby-full rubygems git-core
sudo gem install rhc

A continuación se instala rhc:

rhc setup

Y seguimos los pasos:

![Primer paso ](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/FranciscoPorcel/imagenes/Tema2/6_1.png)

