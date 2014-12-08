<h1> Marcos Jiménez Fernández </h1>

<h2> Tema 2 </h2>

<strong> EJERCICIO 1: Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).</strong>

Debido a que voy a tener que programar en Ruby este cuatrimestre, voy a instalar rbenv para Ruby. Para instalarlo ejecutamos el siguiente comando:

sudo apt-get install rbenv

<strong> EJERCICIO 2: Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift. </strong>

Nos damos de alta en OpenShift:

<img src="http://i60.tinypic.com/2ltpt3s.png"></img>

<strong> EJERCICIO 3: Crear una aplicación en OpenShift y dentro de ella instalar WordPress.</strong>

A la aplicación de WordPress le vamos a dar el nombre de infraestructuravirtual:

<img src="http://i62.tinypic.com/o6d542.png"></img>

Y este sería el resultado final:

<img src="http://i60.tinypic.com/izqexi.png"></img>

<strong> EJERCICIO 4: Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.</strong>

Para comenzar a programar nuestro script nos vamos a https://script.google.com/macros/d/18L6dlBMBHa4TWddKE1SYVO6wsw46bXTNrS3rYClAhlcbZW2h7j7kKDxk/edit?splash=yes donde pincharemos sobre "Proyecto en blanco". Una vez hecho eso entraremos directamente en la plantilla para empezar con el script. Este es el aspecto que presenta:

<img src=http://i60.tinypic.com/9i4g7p.png></img>

Se puede ver cómo se ha cambiado el nombre de la función y el nombre del archivo. Ambos se llaman "ejemploScriptGoogle" y realiza una función bastante sencilla como es mandar un correo al mismo usuario que se encuentra identificado.

Para probarlo, y sin salir de la pantalla de edición del script, pulsamos sobre "Ejecutar". Cuando nos pida autorización para correr la aplicación pulsamos sobre "Continuar".

Como comentamos anteriormente, el script manda un correo al usuario que se encuentra identificado en Gmail con el mensaje "Hola, mundo". Este es el resultado:

<img src=http://i60.tinypic.com/2cwk1oo.png></img>

<strong> EJERCICIO 5: Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.</strong>

<strong> EJERCICIO 6: Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.</strong>

Los ficheros más importantes para realizar la construcción de la aplicación (en este caso en Heroku) son package.json y app.json Además, es posible que necesitemos instalar algunas herramientas adicionales para el correcto despliegue. Normalmente en estos ficheros aparece la configuración que queremos que tenga Heroku a la hora de desplegar la aplicación.

<strong> EJERCICIO 7: Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.</strong>

Por ejemplo, para Java, podemos usar <a href=http://jmeter.apache.org/>JMeter</a>.
