##Tema 2:

###Ejercicio 1

Este procedimiento lo utilizé el año pasado en DAI para trabajar en la asignatura:

Primero instalamos el aptitude para instalar el virtual env:

````
sudo apt-get install aptitude
sudo aptitude install libc6-dev python-dev python-virtualenv
````

Ahora vamos a crear el entorno virtual para python:

````
mkdir ./virtualenv
virtualenv --python=/usr/bin/python2.7 python2.7
````

Ya solo nos queda activarlo

````
source ./python2.7/bin/activate
````

<img src="http://i60.tinypic.com/1e6xbp.png"></img>

###Ejercicio 2

Me he registrado en Openshift ya que me hara falta para la actividad 3:

<img src="http://i60.tinypic.com/23saxqp.png"></img>

###Ejercicio 3

Primero le doy a crear nueva aplicación:

<img src="http://i61.tinypic.com/2nv83va.png"></img>

Relleno los datos necesarios:

<img src="http://i59.tinypic.com/291fa83.png"></img>
<img src="http://i62.tinypic.com/k9ggoj.png"></img>
<img src="http://i61.tinypic.com/16715yx.png"></img>

Y finalmente se instala correctamente:

<img src="http://i62.tinypic.com/n47b0y.png"></img>
<img src="http://i61.tinypic.com/2j60j1f.png"></img>


###Ejercicio 4

Primero creo el archivo dentro del google drive, como por ejemplo un Documento, ahora voy a Herramientas >> Editor de secuencia de comandos

Ahora creo un pequeño script del tipo "Hola mundo" llamando a la funcion onOpen para que se ejecute al abrir:

<img src="http://i59.tinypic.com/akv0vd.png"></img>

Comprobamos el script actualizando el documento:

<img src="http://i61.tinypic.com/20afej6.png"></img>

El segundo paso es utilizar un menu para que lo ejecute:

<img src="http://i60.tinypic.com/1q0t53.png"></img>

<img src="http://i57.tinypic.com/j953pw.png"></img>

Y comprobamos que funciona:

<img src="http://i59.tinypic.com/15g5myq.png"></img>


###Ejercicio 5

Actualmente el lenguaje de programación que mas uso es c++, por ejemplo para las practica de Informatica Grafica utilizo un sistema basado en Makefile,
para ello vamos a ver por ejemplo como lo construyo para la practica 2 de IG:

<img src="http://i58.tinypic.com/suycer.png"></img>

Aqui pego el codigo con algunos comentarios:

````
# fichero Makefile
#
# nombre del fichero ejecutable
#
TARGETS= practica2

# banderas para el compilador (C y C++). Se indican los directorios donde se puenden
# encontrar ficheros para incluir mediante la opcion -I
# la opcion -g sirve para permitir la depuración
#
CFLAGS=    -g -DXWINDOWS -DSHM -I/usr/include -I.
CXXFLAGS=  -g -DXWINDOWS -DSHM -I/usr/include -I.

# banderas pra el enlazador
# Se indica directorios donde encontrar las funciontecas con -L. Usando -l seguido del
# nombre se indica la funcionteca que se desea enlazar.
#
LDFLAGS=  -lGLU -lGL -lglut

# definicion del compilador
#
CC = g++

# orden que sera ejecutada por defecto
#
default : $(TARGETS)

# regla de ejecucion
#
$(TARGETS) : file_ply_stl.o _ply.o _object3D.o _triangles_object3D.o _cube.o _tetrahedron.o user_code.o practica2.o
	$(CC) -o $@ $(CXXFLAGS) file_ply_stl.o _ply.o _object3D.o _triangles_object3D.o _cube.o _tetrahedron.o user_code.o practica2.o $(LDFLAGS)

#
#
clean:
	rm -f *.o
	rm -f $(TARGETS)

#
#
redo:
	touch *.cc
	make

#
#
superclean:
	rm -f *.o
	rm *~
	rm -f $(TARGETS)

#
#
tgz:
	rm -f *.o
	rm *~
	rm -f $(TARGETS)
	tar -zcvf $(TARGETS).tgz *
````

Aqui ya tenemos todo el sistema automatizado para compilar rapidamente en el entorno de trabajo. Simplemente ejecuto el comando make y me genera el ejecutable practica2, simplemte ejecuto ./practica2


###Ejercicio 6

Dado que he trabajado con OpenShift vamos a installar el entorno en Ubuntu, para ello sigo el tutorial de la pagina de openshift:

````
https://developers.openshift.com/en/getting-started-client-tools.html#ubuntu
````

Primero instalo el rubygems y el rhc:
<img src="http://i61.tinypic.com/al3qqu.png"></img>
````
sudo apt-get install ruby-full rubygems git-core
sudo gem install rhc
````
Instalo rhc:

````
rhc setup
````
<img src="http://i58.tinypic.com/2whr1py.png"></img>

Y simplemente sigo los pasos:
<img src="http://i57.tinypic.com/vd0ort.jpg"></img>

Y finalmente:
<img src="http://i58.tinypic.com/313rdza.png"></img>


###Ejercicio 7

Para este ejercicio he utilizado por ejemplo el JUnit de Netbeans, ya que utilizo tambien mucho este entorno de programación:

Cojo un proyecto cualquiera de los que tengo y simplemente vamos a crearle unos test simples:

<img src="http://i58.tinypic.com/15ro9ki.jpg"></img>

Y nos sale una pantalla con los distintos test que podemos seleccionar, selecciono JUnit y el acceso a todo.

<img src="http://i59.tinypic.com/j63jx4.jpg"></img>

Ahora cojo y le hago dos test simples lo suyo es usar elementos del programa para hacer los test, como funciones y todo ese tipo de elementos.

Para comprobar simplemente hago dos funciones a testear con un hola mundo que rellenare con mis datos:

<img src="http://i62.tinypic.com/ek582v.jpg"></img>

Cambio los parametros y hago un test sobre el programa:

<img src="http://i57.tinypic.com/2dv21rb.jpg"></img>