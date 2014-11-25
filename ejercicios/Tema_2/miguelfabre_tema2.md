#Creando aplicaciones en la nube: Uso de PaaS y SaaS

##Ejercicio 1

**Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).**

He decido instalar *virtualenv para Python*, para ello, procedemos de forma habitual:

*sudo apt-get install python-virualenv*

Una vez instalado, probamos que funciona correctamente

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_2/imagenes/ejercicio1-1.png)

##Ejercicio 2

**Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift**

He decidido darme de alta en OpenShift, para ello, hacemos click en la opción "Sing up for free":

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_2/imagenes/ejercicio2-1.png)

Una vez rellenado el formulario habitual de registro,validado nuestra cuenta mediante un enlace en un mesaje de correo electrónico y aceptados los términos y condiciones y las políticas de privacidad, ya podemos acceder a nuestra cuenta y crear nuestra primera aplicación.

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_2/imagenes/ejercicio2-2.png)

##Ejercicio 3

**Crear una aplicación en OpenShift y dentro de ella instalar WordPress.**

Para crear una aplicación, primero debemos elegir el lenguaje de programación (en mi caso Python). Después, añadimos el dominio bajo el que estarán nuestras aplicaciones.

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_2/imagenes/ejercicio3-1.png)

Una vez hecho esto, vamos a instalar WordPrest en nuestra aplicación, para ello:

Seleccionamos la instalación de Wordpress
![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_2/imagenes/ejercicio3-1.png)

Seguimos los pasos indicados y listo:

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_2/imagenes/ejercicio3-2.png)

##Ejercicio 4

**Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.**

En primer lugar, y siguiendo las instrucciones dadas en el guión, accedemos a Google Docs --> Herramientas --> Editor de secuencia de comandos

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_2/imagenes/ejercicio4-1.png)

Creamos un script que cree un documento nuevo de nombre "Hello world!"

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_2/imagenes/ejercicio4-2.png)

Ejecutamos, vamos a nuestra ventana inicial de Google Docs, y ahí están los documentos creados producto de la ejecución del script

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_2/imagenes/ejercicio4-3.png)

#Ejercicio 5

**Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente**

El sistema de automatización de la construcción que más he empleado y empleo es "make". Make es un programa usado para construir otros programas o documentos. Make se emplea para realizar todos esos tediosos procesos de compilado con una sola orden. Yo lo uso en el lenguaje de programación c++.

##Ejercicio 6

**Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.**

En OpenShift, para utilizar el fichero de automatización de contrucción, hay que seguir los pasos indicados por [Client Tool](https://developers.openshift.com/en/getting-started-client-tools.html#ubuntu). En líneas generales, podemos resumir estos pasos en:

* Instalar Ruby
* Instalar Git
* Instalar OpenShift Gem
* Utilizar rhc y configurar para asociarlo a la app.

##Ejercicio 7

**Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente**

Por ejemplo, [Simple Test] (http://www.simpletest.org/), que es un entorno de pruebas para php.



