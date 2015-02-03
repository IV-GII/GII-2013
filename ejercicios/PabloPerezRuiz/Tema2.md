#2.Platform as a Service.


###Ejercicio 1:
####Instalar un entorno virtual para tu lenguaje de programación favorito.

Aprovecho lo realizado en DAI el curso anterior:

Instalamos aptitude para instalar virtual env. Hacemos: 

sudo apt-get install aptitude
sudo aptitude install libc6-dev python-dev python-virtualenv

Para crear el entorno virtual para Python hacemos: 

mkdir ./virtualenv
virtualenv --python=/usr/bin/python2.7 python2.7

Y para activarlo hacemos:

source ./python2.7/bin/activate

<img src="http://i59.tinypic.com/2qvgktd.png"></img>

###Ejercicio 2:
####Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.

Me he registrado en Heroku. 

<img src="http://i62.tinypic.com/2qsbceb.png"></img>

Una vez confirmamos el email, metemos los datos y aceptamos:

<img src="http://i61.tinypic.com/1zgbymg.png"></img>

Una vez hecho esto ya he podido acceder al Dashboard:

<img src="http://i57.tinypic.com/34s2s78.png"></img>


###Ejercicio 3:
####Crear una aplicación en OpenShift y dentro de ella instalar WordPress. 

Una vez registrado y confirmado mi email, le damos a crear nuestra primera aplicación y nos vamos con el scroll abajo a la izquierda y seleccionamos WordPress4:

<img src="http://i57.tinypic.com/6fuzgn.png"></img>


Introducimos la dirección deseada y le damos a Create Application:

<img src="http://i61.tinypic.com/scdd7q.png"></img>

Ya está creada:

<img src="http://i57.tinypic.com/w705yv.png"></img>

Una vez registrado en WordPress, lo instalamos:

<img src="http://i62.tinypic.com/nf5e15.png"></img>


###Ejercicio 4:
####Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama. 

Nos vamos a nuestro Drive.google y le damos a create y abajo del todo: connect more apps. Escribimos en "Search Apps" script y le damos a Google Apss Script/Connect:

<img src="http://i58.tinypic.com/n2zf5c.jpg"></img>

Cuando conecte, le damos a crear script y pegamos el codigo que previamente hayamos desarrollado.

Mi script crea un menu con un item, seguido de un separador visual, más un submenu que contiene otro item.

<img src="http://i58.tinypic.com/2ez5us2.png"></img>

Al ejecutarlo nos sale un aviso en rojo diciendo que el metodo getUi() no esta disponible en la nueva version de Google Sheet, luego no he podido probarlo.


###Ejercicio 5:
####Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente. 

Uno de los que he usado ha sido Ant para java. 
Es una herramienta usada en programación para la realización de tareas mecánicas y repetitivas, normalmente durante la fase de compilación y construcción (build). Es, por tanto, un software para procesos de automatización de compilación, similar a Make pero desarrollado en lenguaje Java y requiere la plataforma Java, así que es más apropiado para la construcción de proyectos Java.

Esta herramienta, hecha en el lenguaje de programación Java, tiene la ventaja de no depender de las órdenes del shell de cada sistema operativo, sino que se basa en archivos de configuración XML y clases Java para la realización de las distintas tareas, siendo idónea como solución multi-plataforma.

La diferencia más notable entre Ant y Make es que Ant utiliza XML para describir el proceso de generación y sus dependencias, mientras que Make utiliza formato makefile. Por defecto, el archivo XML se denomina


###Ejercicio 6:
####Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma. 

El PaaS elegido ha sido OpenShift. 

[Installing Client Tools](https://developers.openshift.com/en/getting-started-client-tools.html?sc_cid=70160000000UJArAAO&gclid=CjwKEAiAvvyiBRDzrYuuldy6wB8SJABPJWObcPhYR8u5pRzNr0-s2FeiymkqmzCZTYXD3FDnfL1OohoCYGbw_wcB)


Setting up the OpenShift Environment on Ubuntu:

Primeramente necesitaremos gems para instalar rhc:

<img src="http://i58.tinypic.com/2qc45ld.png"></img>

Ahora podemos instalar rhc. Para ello hacemos:

<img src="http://i61.tinypic.com/2rdexb6.png"></img>

Finalmente hacemos rhc setup y tras logearnos, podremos tener acceso a nuestras aplicaciones, en mi caso tengo una:

<img src="http://i62.tinypic.com/2vmhut3.png"></img>

Posteriormente si usamos git podremos descargar nuestra aplicación. Además se podrá desplegar de forma automática la aplicación mediante el archivo build, en el path: .openshift/action_hooks/build

<img src="http://i61.tinypic.com/2m3g3zk.png"></img>

Ésta ha sido una forma de automatización de nuestra aplicación, podemos sin embargo, utilizar Jenkins o Hot Deployment en lugar de la anterior.

**Jenkins** proporciona integración continua para el desarrollo de software. Es un sistema corriendo en un servidor que es un contenedor de servlets, como Apache Tomcat. Soporta herramientas de control de versiones como CVS, Subversion, Git, Mercurial, Perforce y Clearcase y puede ejecutar proyectos basados en Apache Ant y Apache Maven, así como scripts de shell y programas batch de Windows.

**Hot Deployment** Se ahorra un tiempo grandísimo en el despliegue e inactividad de la aplicación sin tener que rehacer el codigo o reiniciar la aplicación por parte de los desarrolladores.



###Ejercicio 7
####Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.

Utilizaremos el entorno de pruebas Nose: https://nose.readthedocs.org/en/latest/

Procederemos a instalarlo en nuestra máquina:

<img src="http://i58.tinypic.com/51oow3.png"></img>

Con esto se instalarán las librerias de nose. Para ejecutar test desde tu proyecto primero nos vamos al directorio de nuestro proyecto: 

``cd path/to/project``

y posteriormente hacemos:

``nosetests``

Nos tendría que salir algo asi:


````..................................
----------------------------------------------------------------------
Ran 34 tests in 1.440s

OK
````


Con lo que sabremos que ha detectado a nose y ejecutó el test.
