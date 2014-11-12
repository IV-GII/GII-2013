#Ejercicio 1

###### Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar este artículo en Infoautónomos sobre el tema.

El [servidor elegido](http://www.dynos.es/servidor-blade-hp-proliant-bl460c-gen8-xeon-e5-2640v2-2ghz-32gb-ddr3--4514953608993__724085-B21.html) es un HP Blade Proliant con CPU	Intel Xeon E5-2640V2 / 2 GHz, 32GB de RAM hasta máx 256GB... con un precio de 3230,00€

En primer lugar eliminamos los impuestos (21%) para obtener el precio neto del servidor:

3230,00€ / 1,12 = 2669,42€

La amortización a cuatro años sería:

2014 : 25% = 667,36€
2015 : 25% = 667,36€
2016 : 25% = 667,36€
2017 : 25% = 667,36€

La amortización a siete años sería:

2014 : 15% = 400,41€
2015 : 15% = 400,41€
2016 : 15% = 400,41€
2017 : 15% = 400,41€
2018 : 15% = 400,41€
2019 : 15% = 400,41€
2020 : 10% = 266,94€

---
#Ejercicio 2

###### Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.



Como proveedor de servicios en la nube he consultado Google Compute Engine:

Por una máquina standard con 2 cores y 8 gigas de ram y al 10% del tiempo el coste mensual es de 9.97$/mes ~ 120$/año, y un uso del 1% serían 1$/mes = 12$/año

Como proveedor de alojamiento en internet he chequeado [Hostminio](http://hostminio.es/alojamiento-web/)
cuyo plan más caro son 5,99€/mes = 72€/mes y el servicio de hosting es del 100%.

Depende del tiempo de uso que vayamos a tener y la potencia requerida nos saldrá más beneficioso una opción u otra.

---
#Ejercicio 3

###### 1.- ¿Qué tipo de virtualización usarías en cada caso?

<>Comentar en el foro<>
###### 2.- Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.

En primer lugar instalo CDE con el comando:

`sudo apt-get install cde`

tras esto creo un programa en Linux, por ejemplo un `echo "Hello World!"`

Para empaquetar el programa ejecuto el siguiente comando:
`./cde ./hello.sh`

y para ejecutarlo con CDE deberemos introducir la ruta hasta el archivo hello.sh.cde que será el que llame al programa cde-exec y ejecutará el programa que hemos empaquetado con CDE.

[Referencia](https://github.com/germaaan/IV_GMM/blob/master/TEMA1/ejercicio03.md)

---

#Ejercicio 4

###### Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.

Docker es una herramienta que nos permite crear lo que ellos denominan contenedores, lo cual son aplicaciones empaquetadas auto-suficientes, muy livianas que son capaces de funcionar en prácticamente cualquier ambiente, ya que tiene su propio sistema de archivos, librerías, terminal, etc.

Para su instalación primero añadimos el repositorio de Docker y sus llaves lista local de fuentes y llavero local:

`sudo sh -c "curl https://get.docker.io/gpg | apt-key add -"`

`sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"`

Ahora instalamos el programa:

`sudo apt-get install lxc-docker`

Tras instalarlo primero debemos especificar la imagen base del sistema que utilizará el contenedor, para esto haremos:

`docker pull base`

Una vez teniendo la imagen base podemos empezar a trabajar sobre ella, probemos meternos a su terminal:

`docker run -i -t base /bin/bash

Tras esto estaremos dentro del terminarl del contenedor. Ya tenemos nuestro contenedor auto-suficiente de Nginx, ahora debemos crear una nueva imagen con los cambios que hemos hecho.

Con esto ya tenemos una imagen con Nginx instalado, probemos ahora la magia de Docker. Iniciemos el contenedor de la siguiente manera:

`docker run -p 80 -i -t jonathanwiesel/nginx /bin/bash `

Una vez dentro, iniciemos el servicio de Nginx:

`service nginx start`

Ahora podemos comprobar que nginx está funcionando desde su propio contenedor autosuficiente.

[Referencia](http://codehero.co/como-instalar-y-usar-docker/)

---

#Ejercicio 5

###### Instala el sistema de gestión de fuentes git

Para realizar la instalación de git simplemente tendremos que ejecutar el comando apt correspondiente:

`sudo apt-get install git`

[Ver algunos comandos básicos de git](http://www.slideshare.net/jjmerelo/introduccin-al-uso-git-y-github-para-trabajo-colaborativo)

---

#Ejercicio 6

###### 1. Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README.

Tomaremos como ejemplo el proyecto de la asignatura, GII-2014. Para descargarlo usaremos el siguiente comando:

`git pull git@github.com:JJ/GII-2014.git master`

Tras su ejecución tendremos una copia del repositorio 'padre' en nuestro repositorio.

Si quisieramos crear un nuevo repositorio desde la terminal emplearíamos el comando:

`git init`

###### 2. Modificar el readme y subir el fichero modificado.

Modificar el fichero es bien sencillo, se hará con cualquier editor de textos. Una vez modificado lo añadimos a los ficheros modificados:

`git add readme.md`

Aceptaremos los cambios:

`git commit -m "modificando el readme"`

y subiremos los cambios:

`git push origin master`

---

#Ejercicio 7

###### Comprobar si en la instalación hecha se ha instalado cgroups y en qué punto está montado, así como qué contiene.

Para comprobar si está montado comprobamos si se encuentra en el directorio por defecto: `/sys/fs/cgroup/`

En mi caso está instalado y contiene el directorio `systemd` dentro del cual hay los siguientes ficheros:

```
cgroup.clone_children  
cgroup.sane_behavior  
tasks  
cgroup.event_control   
notify_on_release  
user/  
cgroup.procs  
release_agent
```
[Referencia](http://elpuig.xeill.net/Members/vcarceler/articulos/introduccion-a-los-grupos-de-control-cgroups-de-linux)

---

#Ejercicio 8

###### Crear diferentes grupos de control sobre un sistema operativo Linux. Ejecutar en uno de ellos el navegador, en otro un procesador de textos y en uno último cualquier otro proceso. Comparar el uso de recursos de unos y otros durante un tiempo determinado.

En primer lugar he creado 3 grupos (grupoA, grupoB, grupoC). Luego les he asignado los procesos navegador (chrome), procesador de textos (office) y otro (dropbox).

Tras la ejecución durante el mismo período de tiempo por cada proceso han tenido el siguiente consumo:
```
$ cat cgroup/grupoA/cpuacct.usage
1530485730
$ cat cgroup/grupoB/cpuacct.usage
1322458601
$ cat cgroup/grupoC/cpuacct.usage
1042875295
```

Vemos que el proceso 'chrome' es el que más a consumido

---

#Ejercicio 10

###### Comprobar si el procesador o procesadores instalados tienen estos flags. ¿Qué modelo de procesador es? ¿Qué aparece como salida de esa orden?

Procesador (con cat /proc/cpuinfo): Intel(R) Celeron(R) CPU          743  @ 1.30GHz

La orden `egrep '^flags.*(vmx|svm)' /proc/cpuinfo` no muestra nada por pantalla por lo que el procesador no tiene la funcionalidad o está desactivada

---

#Ejercicio 11

######Comprobar si el núcleo instalado en tu ordenador contiene este módulo del kernel usando la orden kvm-ok.

No está instalado y tras instalarlo sigue diciendo que no está instalado, interpreto que el "problema" está en que como hemos visto en el ejercicio anterior no está activada la virtualización de hardware
