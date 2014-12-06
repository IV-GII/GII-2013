Lista de ejercicios Israel Blancas Álvarez
============================

#TEMA 2: Introducción a la infraestructura virtual: concepto y soporte físico#


##Sesión 2-10-2014##

##Ejercicio 1##

#####Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).#####
He instalado el de Python (virtualenv) mediante:
>sudo pip install virtualenv

Después, he probado a crear el entorno virtual escribiendo en consola:
>virtualenv proyecto


***

##Ejercicio 2##

#####Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.#####
Me he registrado en OpenShift.


***

##Ejercicio 3##
#####Crear una aplicación en OpenShift y dentro de ella instalar WordPress.#####
Tras solicitar crear una aplicación, se nos permite desplegar una aplicación de las que ya hay predefinidas. Insertando en el buscador "Wordpress". Después de esto, se nos pedirán algunos datos, como el nombre de dominio o el repositorio Git donde tenemos el código.
Finalmente, se nos darán los datos necesarios para entrar a administrar nuestro Wordpress.
[Ir a mi aplicación](http://wordpress-iblancasa.rhcloud.com/)



***
***

##Sesión 2-10-2014##

##Ejercicio 4##

#####Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.#####
He cambiado el nombre del menú y le he puesto una función que crea un cuadro de diálogo y pregunta por una respuesta de usuario.
![Google Drive](http://fotos.subefotos.com/3d7f1666becd3469f68ff662d506fcd3o.jpg)

Aquí podemos ver cómo aparece el menú nuevo.

```javascript

function onOpen() {
  // Add a menu with some items, some separators, and a sub-menu.
  DocumentApp.getUi().createMenu('Menú probado')
      .addItem('Hola mundo', 'hola')
      .addToUi();
}


function hola() {
  var result = DocumentApp.getUi().alert(
      'Hola',
      '¿Es esto lo que buscabas?',
      DocumentApp.getUi().ButtonSet.YES_NO);

  if (result == DocumentApp.getUi().Button.YES) {
    DocumentApp.getUi().alert('Pues ya lo has encontrado');
  } else {
    DocumentApp.getUi().alert('Pues adiós');
  }
}
```



***
***

##Sesión 27-10-2014##

##Ejercicio 5##

#####Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.#####

Para probar uno de estos sistemas (y aprovecharlo para el trabajo de la asignatura), he instalado GruntJS. Para ello, hay que instalar "NodeJS", "NPM" y, utilizando este último, "GruntJS". Para ello he utilizado el [manual de esta web](http://codehero.co/como-utilizar-gruntjs/) donde además se explica cómo realizar un ejemplo de funcionamiento.


***

##Ejercicio 6##

#####Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.#####

El PaaS que utilizo es Heroku. Estudiando los ficheros que hay en [un repositorio para descargar una aplicación y practicar su despliegue en Heroku](https://github.com/iblancasa/BackendSI2-IV/wiki/C%C3%B3mo-realizar-un-despliegue-en-Heroku), he visto que el fichero al que se refiere el enunciado se llama "app.json".
Para crear/editar este fichero, se puede utilizar un editor de textos cualquiera.
En este fichero se indican distinas cosas, como puede ser el nombre de la aplicación, palabras claves o, incluso, un logotipo de la misma.
En [esta página (de la documentación de Heroku)](https://devcenter.heroku.com/articles/app-json-schema) hay más información.
Aunque este fichero es importante, más lo es "Profile". Un fichero que nos permite decir qué órdenes son precisas para la ejecución de nuestra aplicación (probablemente este segundo fichero se acerque más a lo que se pide). En Heroku, de momento (para NodeJS), solo ha sido necesario escribir:
`web: node index.js`
Más sobre [Profile](https://devcenter.heroku.com/articles/procfile)

***

##Ejercicio 7##

#####Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.#####

He estado buscando uno que sea útil para el [proyecto de la asignatura](https://github.com/iblancasa/BackendSI2-IV). El que he encontrado ha sido "Mocha".
[Guía hecha por UnitJS](http://unitjs.com/guide/mocha.html).
[Guía hecha por Brian Stoner](https://brianstoner.com/blog/testing-in-nodejs-with-mocha/)
[Guía de Web App Blog](http://webapplog.com/test-driven-development-in-node-js-with-mocha/)


***
***
***
