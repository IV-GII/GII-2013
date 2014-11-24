## Tema 1

#Ejercicio 1

Calcular amortización a 4 y 7 años de un servidor

Servidor: [ASUS TS700-E7/RS8](http://www.alternate.es/ASUS/TS700-E7-RS8-(DVD-RW)/html/product/1135513?)

Precio: 1349€ (con IVA).
Precio sin IVA con el que realizaremos los cálculos: 1065,71€.
Además consideraremos que el equipo se ha obtenido en Enero (por lo que contariamos el año completo al realizar la amortización).

**Amortización a 4 años** 
Cada año se amortizaría un 25%, lo que nos daría una cantidad de 266,4275€ al año.

**Amortización a 7 años**
Cada año se amortizaría un 14'3% lo que nos daría una cantidad aproximada de 152,39€ al año.


#Ejercicio 2

Vamos a realizar una comparación de precios entre servicios de alojamiento en Internet y de proveedores de servicios en la nube. Hemos escogido como proveedor a la compañía [*Acens*](http://www.acens.com/).

- Características del servidor:
  * 4 cores
  * 4GB RAM
  * 600GB Disco
  
- Precio anual en un *Servidor Dedicado* : 203,3€/mes * 12 = 2439,6€/año.
- Precio anual en *Cloud Server* : 331,2€/mes (0.46€/hora) * 12 = 3974,4€/año.

Vamos a realizar comparaciones según el porcentaje de uso :
  Para un servidor dedicado pagaríamos siempre lo mismo, ya utilicemos un 1%, 10%. Ya que el pago se realiza por mes y   no por uso.

* Si se utiliza un 1% del tiempo :
  - Servidor Dedicado: 2439,6€/año (203,3€ * 12, Pago fijo al mes).
  - Cloud Server: 40,296€/año (8760horas/año * 0.46€/h = 4029,6€ aproximadamente).

*Si se utiliza un 10% del tiempo :
  - Servidor Dedicado: 2439,6€/año (203,3€ * 12, Pago fijo al mes).
  - Cloud Server: 402,96€/año (8760horas/año * 0.46€/h = 4029,6€ aproximadamente).
   


#Ejercicio 3

- Parte 2:
 
Se ha realizado un pequeño programa en python que suma dos valores introducidos por teclado.

Una vez creado, hemos instalado el paquete CDE, con la siguiente instrucción:
	> sudo apt-get install cde

A continuación hemos dado permisos de ejecución (chmod +x suma.py) al programa.

Por último hemos ejecutado una serie de comandos para realizar el empaquetado en CDE.
Hemos realizado una copia del fichero suma.py en los siguientes directorios:
	- /usr/games
	- /usr/bin

Una vez tenemos la copia en ese directorio ejecutamos:
	> cde suma.py

Se ejecutará y a continuación realizaremos un ls, para ver como se han creado en nuestro directorio una serie de ficheros y una carpeta. Accederemos a la carpeta "cde-packages" y ejecutaremos otro ls.

Nos saldrán un listado de los archivos que se han creado al ejecutar la orden cde anterior.

Comprobamos que ejecutando el fichero (./suma.py.cde) el programa se ejecuta correctamente.



#Ejercicio 4

Vamos a realizar el tutorial de docker que se encuentra en el siguiente enlace [*Tutorial*](https://www.docker.com/tryit/)

![Ejercicio_4](http://i.imgur.com/1I2UHzW.png?1)



#Ejercicio 5

Para comenzar la instalación del sistemas de fuentes Git, lo primero que
vamos a hacer es actualizar el listado de los paquetes.
	
	> sudo apt-get update

A continuación instalaremos el paquete.
	
	> sudo apt-get install git
	
Por último vamos a realizar la configuración de algunos parámetros que
servirán para identificarnos a la hora de realizar gestiones en nuestros
repositorios. Primero configuraremos el nombre y a continuación el email.

	> git config --global user.name "Cristina Rosillo"
	> git config --global user.email "cristy.blk@gmail.com"
	
Si queremos comprobar el estado de todos estos valores, podemos ejecutar:
	
	> git config --list
	
![Ejercicio_5](http://i.imgur.com/O5S6Kiu.png)



#Ejercicio 6

Vamos a crear un proyecto nuevo y a descargarlo desde git, modificando al el fichero README desde linea de 
comandos y actualizandolo.

![Ejercicio_6_1](http://i.imgur.com/Wrq19vn.png)

![Ejercicio_6_2](http://i.imgur.com/oMLMGms.png)

![Ejercicio_6_3](http://i.imgur.com/mhvsWgI.png)

![Ejercicio_6_4](http://i.imgur.com/5sCygPW.png)

![Ejercicio_6_5](http://i.imgur.com/m5EWt99.png)


#Ejercicio 7

Para verificar si está montado, comprobaremos que el directorio /sys/fs/cgroup
no esté vacío. Si lo está como en mi caso tendremos que montarlo ejecutando lo siguente:

	>sudo mount -t cgroup cgroup /sys/fs/cgroup
	
Una vez hecho, haremos un ls para ver su contenido.

![Ejercicio_7](http://i.imgur.com/945l6hG.png)



#Ejercicio 10

Si tiene instalados los flags, podemos comprobarlo ejecutando la siguiente orden:

	> egrep '^flags.*(vmx|svm)' /proc/cpuinfo

El procesador del equipo es:

![Ejercicio_10_1](http://i.imgur.com/YXYxnHg.png)

La salida que produce la ejecución de la primera orden es la siguiente.

![Ejercicio_10_2](http://i.imgur.com/W8XzkM3.png)





##Tema 2

#Ejercicio 1

Vamos a realizar la instalación de el entorno de desarrollo virtual para python Virtualenv. Para hacerlo sólo
debemos ejecutar la siguiente instrucción desde consola:

	> sudo apt-get install python-virtualenv
	
![Ejercicio_1](http://i.imgur.com/4MOaKsV.png)


#Ejercicio 2

Vamos a darnos de alta en el servicio PaaS [OpenShift](https://www.openshift.com).
Como podemos ver ya tenemos creada una cuenta y podemos acceder a la funcionalidad del sitio.

![Ejercicio_2](http://i.imgur.com/StKRpCi.png)


#Ejercicio 3

A continuación vamos a crear una nueva aplicación en nuestra cuenta de OpenShift y vamos a instalar WordPress.
Volvemos al panel de la imagen anterior y seleccionamos la opción "Create you first application now".

![Ejercicio_3](http://i.imgur.com/RTWm6IY.png)

Elegimos en éste caso la instalación de WordPress y al hacerlo se abrirá la siguiente ventana, le damos un nombre a nuestra aplicación y hacemos pinchamos en "Create Application":

![Ejercicio_3_1](http://i.imgur.com/xdUOwna.png)
![Ejercicio_3_2](http://i.imgur.com/qXOrK8t.png)

Ahora podemos empezar a cambiar el códigp de nuestra a aplicación o continuar hasta finalizar la instalación. Vamos a realizar la instalación completa y más tarde editaremos el código si fuese necesario.

![Ejercicio_3_3](http://i.imgur.com/2iKKA46.png)

![Ejercicio_3_4](http://i.imgur.com/tYDzA4G.png)

Finalmente nos muestra la información de acceso a la base de datos y a la aplicación via web. Para empezar a crear nuestro sitio sólo tendremos que pinchar en la url que se nos da en la imagen anterior e ir siguiendo los pasos de configuración del sitio de WordPress.

![Ejercicio_3_5](http://i.imgur.com/0Vn2TEU.png)

Y ya tendremos listo nuestro sitio.

![Ejercicio_3_6](http://i.imgur.com/yOsTWuP.png)

![Ejercicio_3_7](http://i.imgur.com/XSqJ1Nm.png)


#Ejercicio 4

Vamos a crear un pequeño script desde [Google](https://script.google.com). El script creará de forma automática un documento en Google Drive, con el nombre y el contenido que nosotros indiquemos. Lo ejecutaremos y comprobaremos como el documento aparece en nuestra cuenta de Google Drive.

![Ejercicio_4](http://i.imgur.com/iDXEDr8.png)
![Ejercicio_4_1](http://i.imgur.com/kU517z9.png)


#Ejercicio 5

[Buildout](http://www.buildout.org/en/latest/) es un sistema de automatización de construcción de software, usada principalmente para Python y Zope. Es una herramienta open source que nos permite una instalación directa de dependencias y definición de tareas.


#Ejercicio 6

El módulo [Unittest](http://pymotw.com/2/unittest/) nos permite probar nuestro código y realizar "Suites de pruebas", agrupar funcionalidad común y escribir "Casos de pruebas". 

##Tema 3

#Ejercicio 1

Vamos a montar un archivo ISO en un espacio de nombres que vamos a crear, lo primero que haremos será crear el espacio de nombres nuevo. Ejecutamos la siguiente instrucción:

	> sudo unshare -u /bin/bash

Ahora vamos a realizar una prueba, cambiando el nombre del host con "hostname alayala". SI ahora ejecutamos "hostname" podemos ver como se ha cambiado correctamente.
A continuación montaremos la ISO en un directorio que hemos creado previamente. Para realizar el montaje escribimos:

	> mount - o loop [nombreISO] [ruta_de_montaje]

![Ejercicio_1](http://i.imgur.com/JXIvDw2.png)

#Ejercicio 2

1)	Para mostrar los puentes configurados en nuestro sistema ejecutaremos:
		
		> sudo brctl show
		
![Ejercicio_2_1](http://i.imgur.com/cBmlJ92.png)

2)	Ahora vamos a crear una nueva interfaz virtual y a asignarla a una red (en nuestro caso eth0). Como esa 		interfaz la hemos usado al realizar el ejemplo de clase, primero borraremos la interfaz "alcantara" y a 		continuación crearemos la nueva.

![Ejercicio_2_2_1](http://i.imgur.com/QOQnY5G.png)
	
	Una vez eliminada, crearemos nuestra nueva interfaz virtual y la asignaremos a la interfaz eth de la tarjeta 		de red.
	
![Ejercicio_2_2_2](http://i.imgur.com/GYL6SlF.png)
	
#Ejercicio 3

1)	Usaremos la herramienta Debootstrap para crear un sistema mínimo y poder ejecutarlo después. Lo primero que 		necesitamos es instalar el paquete en nuestro sistema.

		> sudo apt-get install debootstrap
	
	Una vez instalado creamos el directorio donde vamos a realizar la instalación del sistema, en éste ejemplo lo 	llamaremos UbuntuSO. Después ejecutamos la siguiente instrucción, que se encargará de instalar el 				sistema. 
	
		> sudo debootstrap --arch=amd64 precise UbuntuSO/ http://archive.ubuntu.com/ubuntu/
		
![Ejercicio_3_1](http://i.imgur.com/pjffktv.png)
	
![Ejercicio_3_2](http://i.imgur.com/WBiOe12.png)
	
2)	Instalar un sistema Fedora dentro de Debian usando la herramienta Rinse. Lo primero que haremos será 			instalarla.

		> 
