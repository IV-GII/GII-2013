##Ejercicios Tema 2
###Ejercicio 1
######Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).

**Nota**: *Este ejercicio pertenece a la relación de ejercicios anterior, por eso lo copiaré tal cual*

[nodeenv para node.js]:https://pypi.python.org/pypi/nodeenv/
[guía]:https://pypi.python.org/pypi/nodeenv/
[virtualenv]:https://github.com/pypa/virtualenv

Voy a instalar [nodeenv para node.js] para ello primero instalo *python-pip*:
```
sudo apt-get install python-pip
```
Ahora, siguiendo la [guía], instalamos *nodeenv*:
```
sudo pip install nodeenv
```
Ahora, ejecutamos **nodeenv**: 

Creamos un nuevo entorno:
```
nodeenv env
```

Activamos el nuevo entorno: 
```
. env/bin/activate
```

En un entorno podemos instalar paquetes. Ver la [guía].

Para desactivar el entorno tan solo hacemos:
```
deactivate_node
```

***
###Ejercicio 2
#####Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.

**Nota**: *Este ejercicio pertenece a la relación de ejercicios anterior, por eso lo copiaré tal cual*

Me di de alta en Heroku en el ejercicio 2 del Tema 1. Muestro una captura en la interfaz tras crear una aplicación:

![](./Imagenes/registrado-heroku.png)

***

###Ejercicio 3
#####Crear una aplicación en OpenShift y dentro de ella instalar WordPress.

**Nota**: *Este ejercicio pertenece a la relación de ejercicios anterior, por eso lo copiaré tal cual*

[esta dirección]:https://wordpress-xripa.rhcloud.com/

En primer lugar nos registramos en OpenShift:

![](./Imagenes/registrado-openshift.png)

Elegimos la opción de WordPress:

![](./Imagenes/openshift-1.png)

Indicamos nuestro nombre de aplicación y de sitio wordpress:

![](./Imagenes/openshift-2.png)

Seleccionamos la región:

![](./Imagenes/openshift-3.png)

Una vez creado WordPress a través de Openshift nos encontramos con:

![](./Imagenes/openshift-4.png)

Accedemos desde esa página de creación a nuestro WordPress para empezar a configurarlo:

![](./Imagenes/openshift-6.png)

Introducimos datos del sitio y de administrador:

![](./Imagenes/openshift-7.png)

Y terminamos con su creación:

![](./Imagenes/openshift-8.png)

Tras ésta, recibiremos un mensaje confirmando la creación:

![](./Imagenes/registrado-wordpress.png)

Y, en mi caso he realizado una entrada nueva con una imagen para comprobar su uso:

![](./Imagenes/openshift-9.png)

Al sitio se puede acceder a través de [esta dirección].

***
