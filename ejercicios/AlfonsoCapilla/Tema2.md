#Tema 2

##Ejercicio 1
###Instalar un entorno virtual para tu lenguaje de programación favorito.

He decidido utilizar [virtualenv para Python](https://virtualenv.pypa.io/en/latest/). Durante el proceso de instalación se usa pip lanzando la orden:

$ [sudo] pip install virtualenv

![Instalación de virtualenv](http://i.imgur.com/9riAoCq.png)

##Ejercicio 2
###Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.
Me he dado de alta en [Heroku](https://www.heroku.com/).

![Heroku](http://i.imgur.com/fD42lgE.jpg)

##Ejercicio 3
###Crear una aplicación en OpenShift y dentro de ella instalar WordPress.

Primero nos registramos en Opensift donde vamos a instalar WordPress.

![Openshift](http://i.imgur.com/h1d4Bxm.png)

Creamos una nueva aplicación y elegimos la instalación de Wordpress.

![Wordpress 4](http://i.imgur.com/JGYzqES.png)

Elegimos la URL de nuestra aplicación y continuamos.

![Datos de la instalación](http://i.imgur.com/hVkSLTq.png)

A continuación realizamos la instalación de wordpress siguiendo los pasos desde nuestra URL.

![Instalación de wordpress](http://i.imgur.com/HDlmr4Z.png)

##Ejercicio 4
###Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.

Para crear un script en un documento de Google tenemos que crear un documento y acceder a 
Herramientas >> Editor de secuencias de comandos
Dentro seleccionamos la opción de Crear secuencia de comandos como aplicación web.
Una vez hecho esto ya podemos crear una función para comprobar que funciona correctamente. EN este caso he creado una función que lanza un dialogo con el texto "Hello World"

![Hola mundo](http://i.imgur.com/FCODUSX.png)

Ejecutamos la aplicación mediante el menú Ejecutar.

![Aplicacion funcionando](http://i.imgur.com/iVPqBjV.png)

##Ejercicio 5
###Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.

Voy a utilizar gulp.js cuyo requisito es tener instalado node.js

Se instala media la orden 
`npm install -g gulp`

##Ejercicio 6
###Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.

El fichero de automatización de Heroku es /apps/:app/builds

El proceso que se sigue es:

- Se pasa el nombre de la aplicación junto con una url que contiene el código fuente de la misma.
- Se crea una nueva estructura en Heroku que pasa a estado "pendiente" y a "construcción".
- Cuando se ha completado pasa a estado "exito" o "fracaso".

##Ejercicio 7
###Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.
