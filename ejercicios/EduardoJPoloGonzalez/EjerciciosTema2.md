#Ejercicios tema 2 Eduardo J. Polo González.#

###Ejercicio 1:
####Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).

El entorno virtual que he elegido es virtualenv para python.

- Primero vamos a instalar pip debido a que no dispongo de el en mi ordenador:

sudo apt-get install python-pip

![](./capturas2/1.png)

- Una vez finalizada la instalación de pip procedemos a instalar el entorno virtual que he elegido (en mi caso virtualenv para python).
- usamos el siguiente comando para la instalación: sudo pip install virtualenv.

![](./capturas2/2.png)

- Para usarlo utilizamos el siguiente comando: virtualenv ENV
![](./capturas2/3.png)

- Activamos el proyecto ENV con el siguiente comando: source bin/activate

![](./capturas2/4.png)

###Ejercicio 2:
####Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.

El servicio PaaS en el que me voy a dar de alta es OpenShift.

- Lo primero que voy hacer es registrarme en su [página web](https://www.openshift.com).
- Una vez que nos registramos nos saldrá el siguiente mensaje:

![](./capturas2/5.png)

Para confirmar la cuenta recibiremos un email en el correo donde nos hemos registrado y desde ahí nos daremos de alta en el servicio OpenShift.

###Ejercicio 3:
####Crear una aplicación en OpenShift y dentro de ella instalar WordPress. 

-	Lo primero que tenemos que hacer es logearnos en la página.
-	Una vez logeados ya podemos crear una aplicación:
![](./capturas2/6.png)

-	Escogemos instalar WordPress
-	
![](./capturas2/7.png)

-	El siguiente paso es configurar la aplicación y crearla.
-	
![](./capturas2/8.png)

-	Una vez creada nos muestra lo siguiente:

![](./capturas2/15.png)

- Si le damos a la dirección de arriba nos muestra lo siguiente:
![](./capturas2/13.png)

![](./capturas2/16.png)

###Ejercicio 4:
####Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama. 

-Creamos el script

![](./capturas2/10.png)

- Una vez creado, si lo queremos poner en marcha nos pedirá autorización

![](./capturas2/11.png)
![](./capturas2/12.png)

- Cuando lo abrimos muestra lo siguiente:

![](./capturas2/14.png)

Script con el nombre del menú y la función cambiada.

-	Realizamos los cambios

![](./capturas2/17.png)
![](./capturas2/18.png)

Vemos como en el menú aparece con distinto nombre:

![](./capturas2/19.png)

###Ejercicio 5:
####Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.

- El sistema de automatización de la construcción que uso es Ant para java.

	es una herramienta usada en programación para la realización de tareas 		mecánicas y repetitivas, normalmente durante la fase de compilación y 		construcción (build). Es, por tanto, un software para procesos de 			automatización de compilación, similar a Make pero desarrollado en 			lenguaje Java y requiere la plataforma Java, así que es más apropiado para 	   la construcción de proyectos Java.

    Esta herramienta, hecha en el lenguaje de programación Java, tiene la      	   ventaja de no depender de las órdenes del shell de cada sistema operativo, 	  sino que se basa en archivos de configuración XML y clases Java para la 		realización de las distintas tareas, siendo idónea como solución multi-		plataforma.

	La diferencia más notable entre Ant y Make es que Ant utiliza XML para 		describir el proceso de generación y sus dependencias, mientras que Make 	 utiliza formato makefile. Por defecto, el archivo XML se denomina 		 	 build.xml.

###Ejercicio 6:
####Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.

###Ejercicio 7:
####Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.
