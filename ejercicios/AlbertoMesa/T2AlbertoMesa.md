
#Alberto Mesa Navarro
##Creando aplicaciones en la nube: Uso de PaaS y SaaS.
##Ejercicios del Tema 2

###Ejercicio 1
Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).
Utilizaré node.js y su correspondiente entorno de programación, nodeenv:

$curl -sL https://deb.nodesource.com/setup | sudo bash - (configuramos)
$sudo apt-get install -y nodejs (instalamos node y npm)

Para hacer una instalación más completa instalo también las build-tools, por si queremos complementos de npm más adelante:
$apt-get install -y build-essential

Y por último instalamos nodeenv:
$npm install node-env

###Ejercicio 2
Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.

He elegido darme de alta en Heroku:

![1](http://s27.postimg.org/z7ue2xjgj/heroku.jpg) .

###Ejercicio 3
Crear una aplicación en OpenShift y dentro de ella instalar WordPress.

###Ejercicio 4
Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.

###Ejercicio 5
Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.

###Ejercicio 6
Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.

El paquete package.json determina la versión de node.js a utilizar y todas las dependencias que deben instalarse con la aplicación. Cuando se despliega la aplicación Heroku lee ese fichero e instala la versión apropiada de node junto a las dependencias al ejecutar $npm install. Algunas otras funciones específicas y no sólo respecto a la construcción pueden establecerse con variables de entorno en un fichero .env. Aunque no forme parte estricta de la construcción, también puede trabajarse con scripts de inicio.


###Ejercicio 7
Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.

Por comodidad y soporte he decidido decantarme en principio por Mocha. Más info sobre Mocha [aquí](https://github.com/mochajs/mocha).  Disponemos de un tutorial rápido e interesante que lo compara con Vows e indica los pasos inciales como la instalación [aquí](https://brianstoner.com/blog/testing-in-nodejs-with-mocha/), donde además se refuerza la decisión de usar Mocha por cuestiones como sintaxis y mejor capacidad de pruebas asíncronas en cliente+servidor.
