Ejercicios de Julio Martínez Martínez-Checa
============================

## Tema 1

### Ejercicio 1 ###

**Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar este artículo en Infoautónomos sobre el tema.**

Vamos a calcular la amortización del siguiente servidor:

[Servidor](http://www.amazon.es/HP-ProLiant-ML110-Server-insertada/dp/B005625WIM/ref=sr_1_4?ie=UTF8&qid=1411980693&sr=8-4&keywords=servidor+hp) con un precio de 617,50€ de final.

Para realizar el cálculo de la amortización deberemos quitarle el IVA que viene incluido en el precio final del servidor:

IVA = 21% de 617,50 = 154,375

Base imponible = 617,50 - 154,375 = 463,125

Si compramos el servidor hoy, a 29 de septiembre de 2014:


**Para una amortización a 4 años**

Cada año completo se amortiza 25% de la base imponible.

En un año completo serían 115,78€

El primer año sería solo los meses de octubre, noviembre y diciembre, así que sería 3/12 de 115,78€ = 28,95€

* Año 2014: 28,95€
* Año 2015: 115,78€
* Año 2016: 115,78€
* Año 2017: 115,78€
* Año 2018: 86,83€


**Para una amortización a 7 años**

Cada año completo se amortiza un 14,28% de la base imponible.

En un año completo serían 66,13€

El primer año sería solo los meses de octubre, noviembre y diciembre, así que sería 3/12 de 66,13€ = 16,53€

* Año 2014: 16,53€
* Año 2015: 66,13€
* Año 2016: 66,13€
* Año 2017: 66,13€
* Año 2018: 66,13€
* Año 2019: 66,13€
* Año 2020: 66,13€
* Año 2021: 49,60€


## Ejercicio 2 ##

**Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.**

[VPS Hostinger](http://www.hostinger.es/hosting-vps): Plan 4 que consta de:

* 4 GB de RAM
* 9,6 GHz de CPU (Supondré que son 3 cores)
* 80 GB de almacenamiento
* 27.99€ / mes

[Servidor cloud en Amazon EC2](http://aws.amazon.com/es/ec2/pricing/) tipo t2.medium:

* 2 vCores
* 4 GB de RAM
* Almacenamiento elástico
* $0,052 por hora = 0,041€ / hora

**Si se usa sólo un 1% del tiempo:**


Con Hostinger pagaríamos lo mismo, porque el servicio se cobra por mes contratado: 27,99€ * 12 meses = 335,88€

Con Amazon pagaríamos (0,041€ * 24h * 30 días * 12 meses) * 1% = 3,54€


**Si se usa sólo un 10% del tiempo:**

Con Hostinger pagaríamos lo mismo, porque el servicio se cobra por mes contratado: 27,99€ * 12 meses = 335,88€

Con Amazon pagaríamos (0,041€ * 24h * 30 días * 12 meses) * 10% = 35,42€


## Ejercicio 3.2 ##

**Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.**

He utilizado un script de python sencillo (holamundo.py) que se puede ejecutar desde mi sistema anfitrión usando el intérprete de python que tengo instalado:

![captura1](http://i.imgur.com/C5hMFuK.png)
![captura2](http://i.imgur.com/lVxz2pX.png)

Después he descargado, compilado e instalado CDE para empaquetar el script y hacerlo portable a otra distribución de Linux sin necesidad de instalar el intérprete de python ni sus dependencias. En este caso vamos a ejecutar el paquete en mi máquina virtual de Ubuntu con una instalación limpia.

![captura3](http://i.imgur.com/iGAfsZ6.png)

Como podemos ver se ejecuta perfectamente la aplicación sin necesidad de instalar programas ni dependencias.

## Ejercicio 4 ##

**Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona. Avanzado Instalarlo y crear una aplicación contenedorizada**

He realizado satisfactoriamente el tutorial de docker y ahora voy a probarlo en mi máquina virtual.

He descargado la misma imagen del tutorial con:

\# docker pull learn/tutorial

A continuación he ejecutado el terminal de la imagen descargada con:

\# docker run -i -t learn/tutorial /bin/bash

Usando el terminal he instalado un intérprete de python y nano para escribir un script que compruebe si un número es primo. He metido dicho script en la carpeta /usr/bin para poder ejecutarlo con un comando.

He salvado los cambios en una imagen nueva con:

\# docker commit 8dbd primo

(8dbd son los 4 primeros caracteres del ID de la imagen del tutorial)

En esta imagen podemos ver las imágenes que tenemos ya creadas con sus respectivos IDs:

![captura4](http://i.imgur.com/gRW7bGk.png)

Finalmente podremos ejecutar el script de esta forma:

![captura5](http://i.imgur.com/CWKDjjP.png)

## Ejercicio 5 ##

**Instala el sistema de gestión de fuentes git**

Para instalar git basta con ejecutar la orden:

\# sudo apt-get install git

## Ejercicio 6 ##

1. Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README.
2. Modificar el readme y subir el fichero modificado.

He creado un proyecto en GitHub con el fichero readme incluido.

Lo he descargado con git, y he añadido información al README haciendo lo siguiente:

![captura6](http://i.imgur.com/1egEtNj.png)

Aquí podemos ver cómo se ve en GitHub actualizado:

![captura7](http://i.imgur.com/dPMViHs.png)

## Ejercicio 7 ##

**Comprobar si en la instalación hecha se ha instalado cgroups y en qué punto está montado, así como qué contiene.**

Está montado en /sys/fs/cgroup. Contiene lo siguiente:

![captura13](http://i.imgur.com/C4zsdNd.png)

Como podemos ver se divide en carpetas diferenciando los recursos. Cada una de ellas contiene los ficheros necesarios que administran el recurso, y los grupos se deberán hacer dentro de cada uno de ellos.

## Ejercicio 8.1 ##

**Crear diferentes grupos de control sobre un sistema operativo Linux. Ejecutar en uno de ellos el navegador, en otro un procesador de textos y en uno último cualquier otro proceso. Comparar el uso de recursos de unos y otros durante un tiempo determinado.**

He creado dos grupos en la carpeta /sys/fs/cgroup/cpu:

![captura8](http://i.imgur.com/YPl18Kn.png)

A cada uno de ellos le he asignado un proceso (Chrome y Firefox):

![captura9](http://i.imgur.com/uvHKi7g.png)

Finalmente he comprobado el tiempo de cpu consumido por cada grupo:

![captura10](http://i.imgur.com/0rQqRHc.png)

## Ejercicio 8.2 ##

**Calcular el coste real de uso de recursos de un ordenador teniendo en cuenta sus costes de amortización. Añadir los costes eléctricos correspondientes.**

Según [este artículo](http://www.pcsilencioso.com/recursos/bdd/73-alimentacion/45-gasto-electricidad) suponiendo que disponemos de un PC Core i7-920 + GTX260 Extreme
y dándole un uso de 8 horas idle + 8 horas load tendríamos un coste mensual aproximado de 12,54€.

Coste anual = 12,54€/mes * 12 meses = 150,48€

Supongamos que el ordenador costó 1000€ y lo amortizamos a 5 años, que es la vida media de un ordenador de sobremesa normal.

Costes de amortización = 5 años * 200€ = 1000€

Costes por consume eléctrico = 5 años * 150,48€ = 752,4€

TOTAL = 1752,40€

## Ejercicio 9.2 ##

**Implementar usando el fichero de configuración de cgcreate una política que dé menos prioridad a los procesos de usuario que a los procesos del sistema (o viceversa).**

Lo primero de todo es tener instalado el paquete libcgroup si usamos una distribución basada en RedHat, o libcgroup-dev si es una basada en Debian.

El archivo de configuración que debemos editar es "/etc/cgconfig.conf".

La prioridad de los procesos en un grupo determinado viene dada por el parámetro "cpu.shares". El valor de cpu.shares es 1024, así que vamos a utilizar 207 para para procesos de usuario y 817 para procesos del sistema (40 y 80% de prioridad respectivamente):

```
mount {
   cpu = /sys/fs/cgroup/cpu;
}

group user_proc {
    cpu {
        cpu.shares = "207";
    }
}

group sys_proc {
    cpu {
        cpu.shares = "817";
    }
}
```
## Ejercicio 9.3 ##

**Usar un programa que muestre en tiempo real la carga del sistema tal como htop y comprobar los efectos de la migración en tiempo real de una tarea pesada de un procesador a otro (si se tiene dos núcleos en el sistema).**

He intentado pasar el proceso de ejecución de una máquina virtual a un solo core. He intentado realizar el siguiente archivo de configuración de grupos:

![captura11](http://i.imgur.com/qHPguH7.png)

Pero no se generan los grupos. También he probado a crear las carpetas de los grupos en la carpeta /sys/fs/cgroup/cpuset y asignarle un set de cpu a un grupo de todos los cores y a otro de sólo un core. El problema es que no puedo escribir en el archivo "tasks" porque "no queda espacio suficiente en disco".

Con htop he podido visualizar la carga:

![captura12](http://i.imgur.com/5Q9QAZm.png)

## Ejercicio 9.4 ##

**Configurar un servidor para que el servidor web que se ejecute reciba mayor prioridad de entrada/salida que el resto de los usuarios.**

Crearemos un grupo para los servidores que llamaremos "apache" y en su interior indicaremos la prioridad de E/S que le vamos a asignar, que en este caso sería mayor que la del resto de usuarios. El rango para este parámetro estaría entre 100-1000, así que le voy a asignar un peso de 900.

Para ello editamos el archivo "/etc/cgconfig.conf", donde usaremos el parámetro "blkio.weight" para indicar la prioridad. Debemos de indicar donde se encuentra el controlador de bloqueo E/S, que en este caso será "blkio=/sys/fs/cgroup/blkio".
El archivo de configuración quedaría así:

```
mount {
   blkio = /sys/fs/cgroup/blkio;
}

group apache {
    blkio {
        blkio.weight = "900";
    }
}
```
Si el servidor que tenemos funcionando es un servidor Apache, deberemos añadir la directiva de configuración "CGROUP_DAEMON="blkio:/http" al fichero de configuración "/etc/apache2/apache2.conf" para que éste tenga conocimiento de que pertenece a un grupo de control.

## Ejercicio 10 ##

**Comprobar si el procesador o procesadores instalados tienen estos flags. ¿Qué modelo de procesador es? ¿Qué aparece como salida de esa orden?**

Mi procesador tiene activados estos flags. El modelo de mi procesador es: Intel(R) Core(TM) i5-3230M CPU @ 2.60GHz

La salida de esta orden es la siguiente:

flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm ida arat epb xsaveopt pln pts dtherm tpr_shadow vnmi flexpriority ept vpid fsgsbase smep erms

flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm ida arat epb xsaveopt pln pts dtherm tpr_shadow vnmi flexpriority ept vpid fsgsbase smep erms

flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm ida arat epb xsaveopt pln pts dtherm tpr_shadow vnmi flexpriority ept vpid fsgsbase smep erms

flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm ida arat epb xsaveopt pln pts dtherm tpr_shadow vnmi flexpriority ept vpid fsgsbase smep erms

## Ejercicio 11 ##

**Comprobar si el núcleo instalado en tu ordenador contiene este módulo del kernel usando la orden kvm-ok.**

La salida de la ejecución del comando ha sido:

INFO: /dev/kvm exists
KVM acceleration can be used

Lo que quiere decir que mi ordenador contiene este módulo del kernel y puedo usar la virtualización kvm.

# Tema 2

## Ejercicio 1 ##

**Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).**

He instalado virtualenv con apt-get:

![captura14](http://i.imgur.com/uGPZOZ5.png)

## Ejercicio 2 ##

**Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.**

Me he dado de alta en RedHat rellenando el formulario.

![captura15](http://i.imgur.com/b6qMry2.png)

Ahora puedo logearme en OpenShift usando esa cuenta:

![captura16](http://i.imgur.com/umMyBS8.png)

## Ejercicio 3 ##

**Crear una aplicación en OpenShift y dentro de ella instalar WordPress.**

Accedemos a [OpenShift](https://www.openshift.com/) y nos logeamos con nuestra cuenta.

A continuación pulsamos sobre "Create my first app".

Buscamos "Wordpress" y nos saldrá algo como esto:

![captura17](http://i.imgur.com/bu5RrKc.png)

Seleccionamos Wordpress 4 y rellenamos el formulario seleccionando el nombre de la URL que tendrá la aplicación entre otras cosas.
Al finalizar nos dirá que se ha completado la instalación y podremos ver qué versión de PHP y MySQL tenemos, el usuario y contraseña de la base de datos y el espacio de almacenamiento del que disponemos.

![captura18](http://i.imgur.com/d0nQlMY.png)

Finalmente si accedemos al sitio podremos empezar a configurar Wordpress para usarlo:

![captura19](http://i.imgur.com/kKUrHcl.png)

## Ejercicio 4 ##

**Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.**

He accedido a Google Drive y abierto un documento de texto. Dentro he seleccionado el menú Herramientas -> Editor de secuencias de comandos. He creado un par de scripts de prueba.

Uno de ellos es una función para enviarme un correo a mi mismo:

![captura20](http://i.imgur.com/FPh2CXK.png)

Cuando le doy a ejecutar me llega un correo con el contenido que he metido en el mensaje:

![captura21](http://i.imgur.com/ry8VLN5.png)

En el siguiente script he hecho un par de menus para que al pinchar en ellos me muestre un mensaje personalizado:

![caputura22](http://i.imgur.com/ufC5wDe.png)

Al pinchar en un menú que hemos creado (dentro de cualquier doc que abramos) nos aparecerá el mensaje que pusimos:

![caputra23](http://i.imgur.com/Skr5f99.png)


## Ejercicio 5 ##

**Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.**

En esta web: [https://wiki.python.org/moin/ConfigurationAndBuildTools](https://wiki.python.org/moin/ConfigurationAndBuildTools) encontramos gran variedad de herramientas para construir programas en python.

De entre todas ellas me parece bastante mejor [Buildit](https://software.agendaless.com/Members/chrism/software/buildit/README.txt) ya que es sencillo de manejar, con una sitaxis clara y eficiente.

## Ejercicio 6 ##

**Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.**

En mi PaaS OpenShift necesitamos administrar la aplicación a través de la terminal para tener acceso a los archivos de despliegue de la aplicación.

Para ello me he instalado el intérprete de ruby y luego he tenido que descargar rhc (herramientas de cliente de OpenShift) a través de ruby:

\# gem install rhc

Acto seguido deberemos realizar una configuración para introducir nuestros credenciales y servidor de OpenShift que estamos usando:

$ rhc setup

Ahora podemos ver qué aplicaciones tenemos instaladas con

$ rhc apps

![captura24](http://i.imgur.com/Zp9NkFs.png)

Si nos fijamos donde dice Git URL podemos ver el enlace que nos lleva al repositorio git de la aplicación. Utilizando git hacemos un clone de la aplicación y la descargamos.

En la estructura de directorios del proyecto tenemos uno llamado .openshift/action_hooks que es donde se guardan los scripts que se utilizan al desplegar la aplicación.

Fichero build:

![captura25](http://i.imgur.com/q4BEw5R.png)

En el fichero build situado en esa carpeta podemos escribir los comandos que se ejecutarán a la hora de desplegar la aplicación de forma que quede automatizado.

## Ejercicio 7 ##

**Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.**

Para python existe un módulo llamado doctest. En un mismo fichero, o fichero aparte se pueden escribir las pruebas de una función en el código. Tiene una pinta como esta:


```
"""
This is the "example" module.

The example module supplies one function, factorial().  For example,

>>> factorial(5)
120
"""

def factorial(n):
    """Return the factorial of n, an exact integer >= 0.

    If the result is small enough to fit in an int, return an int.
    Else return a long.

    >>> [factorial(n) for n in range(6)]
    [1, 1, 2, 6, 24, 120]
    >>> [factorial(long(n)) for n in range(6)]
    [1, 1, 2, 6, 24, 120]
    >>> factorial(30)
    265252859812191058636308480000000L
    >>> factorial(30L)
    265252859812191058636308480000000L
    >>> factorial(-1)
    Traceback (most recent call last):
        ...
    ValueError: n must be >= 0

    Factorials of floats are OK, but the float must be an exact integer:
    >>> factorial(30.1)
    Traceback (most recent call last):
        ...
    ValueError: n must be exact integer
    >>> factorial(30.0)
    265252859812191058636308480000000L

    It must also not be ridiculously large:
    >>> factorial(1e100)
    Traceback (most recent call last):
        ...
    OverflowError: n too large
    """

    import math
    if not n >= 0:
        raise ValueError("n must be >= 0")
    if math.floor(n) != n:
        raise ValueError("n must be exact integer")
    if n+1 == n:  # catch a value like 1e300
        raise OverflowError("n too large")
    result = 1
    factor = 2
    while factor <= n:
        result *= factor
        factor += 1
    return result


if __name__ == "__main__":
    import doctest
    doctest.testmod()
```

Si ejecutamos el programa con la opción -v nos muestra las pruebas que realiza el módulo:

```
$ python example.py -v
Trying:
    factorial(5)
Expecting:
    120
ok
Trying:
    [factorial(n) for n in range(6)]
Expecting:
    [1, 1, 2, 6, 24, 120]
ok
Trying:
    [factorial(long(n)) for n in range(6)]
Expecting:
    [1, 1, 2, 6, 24, 120]
ok
```

Además si se nos quedan cortas las pruebas que podemos realizar de esta manera existen baterías de pruebas ya hechas en la biblioteca unittest

Fuente: [http://code.nabla.net/es/tests.html](http://code.nabla.net/es/tests.html)

# Tema 3

## Ejercicio 1 ##
**Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback**

Creación de espacio de nombres y montaje de imagen ISO usando el dispositivo loopback:

![captura26](http://i.imgur.com/U7iPPHx.png)

## Ejercicio 2.1 ##
**Mostrar los puentes configurados en el sistema operativo.**

Interfaces de red del sistema operativo:

![captura27](http://i.imgur.com/DfhyPsk.png)

Puentes configurado en el sistema operativo (ninguno ahora mismo):

![captura28](http://i.imgur.com/qmvV02N.png)

## Ejercicio 2.2 ##
**Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.**

Añadimos la interfaz puente y con ip addr show vemos que tenemos una interfaz de red llamada p2p1 (que es la que nos da conexión a internet):

![captura29](http://i.imgur.com/FScKRer.png)

Añadimos el puente a la interfaz, y lo activamos con:

```
sudo brctl addif puente p2p1
sudo ifconfig puente up
```
Y finalmente vemos que p2p1 está asociado al puente:

![captura30](http://i.imgur.com/VvFAf8x.png)

## Ejercicio 3.1 ##
**Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.**

He conseguido instalar Ubuntu Lucid:

![captura31](http://i.imgur.com/vU4yV4t.png)

## Ejercicio 3.2 ##
**Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.**

He instalado Rinse con:

```
$ sudo apt-get install rinse
```

Ahora vemos las imágenes que tenemos disponibles para instalar, e instalamos la que queramos:

![captura31](http://i.imgur.com/budELwE.png)

## Ejercicio 4 ##
**Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.**

He entrado al sistema ubuntu que instalamos previamente con debootstrap:

![captura32](http://i.imgur.com/9Btc3Ek.png)

Luego he instalado el paquete de idioma español, el compilador g++ y nano:

```
# apt-get install language-pack-es
# apt-get install g++
# apt-get install nano
```

Creamos un hola mundo en c++:

![captura32](http://i.imgur.com/GhUrece.png)

Lo compilamos y lo ejecutamos:

![captura33](http://i.imgur.com/13e6YG3.png)

## Ejercicio 5 ##
**Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.**

Para instalar nginx he tenido que descargar otra jaula, en este caso ubuntu saucy (tenía problemas con apt en ubuntu lucy y problemas con yum en fedora 19).

He añadido el respositorio de nginx al archivo /etc/apt/sources.list:

```
deb http://nginx.org/packages/ubuntu/ saucy nginx
deb-src http://nginx.org/packages/ubuntu/ saucy nginx
```

Después añadimos la clave pgp, instalamos y ejecutamos:e

```
# apt-get install wget
# wget http://nginx.org/keys/nginx_signing.key
# apt-key add nginx_signing.key
# apt-get update
# apt-get install nginx
# apt-get install curl
# service nginx start
```

Podemos comprobar que ha funcionado con curl:

![captura34](http://i.imgur.com/j57S3y4.png)

## Ejercicio 6 ##
**Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.**

He descargado los fuentes de jailkit e instalado con

```
$ ./configure && make && sudo make install
```

Después he creado una jaula:

```
# mkdir /home/jaulas/dorada
# jk_init -v -j /home/jaulas/dorada/ jk_lsh basicshell netutils editors
```

Finalmente creamos un usuario UNIX y lo enjaulamos:

```
# useradd jk_julio
# passwd jk_julio
# jk_jailuser -m -j /home/jaulas/dorada/ jk_julio
```

# Tema 4

## Ejercicio 1 ##
**Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.**

Ejecutando

```
$ sudo apt-get install lxc
```

Nos descargamos la versión 1.0.6 de los repositorios de Debian

## Ejercicio 2 ##
**Comprobar qué interfaces puente se han creado y explicarlos.**

Por defecto no me ha creado ningún puente, así que he seguido el manual de [esta página](http://debian-handbook.info/browse/es-ES/stable/sect.virtualization.html)

Tenemos que crear un interfaz br0 que nos haga de puente. Para ello editamos el archivo /etc/network interfaces como sigue:

```
auto lo
iface lo inet loopback

# Interfaz eth0 sin cambios
auto eth0
iface eth0 inet dhcp

#Interfaz wlan1 sin cambios
auto wlan1
iface wlan1 inet dhcp

# Interfaz virtual
auto tap0
iface tap0 inet manual
  vde2-switch -t tap0

# Puente para los contenedores
auto br0
iface br0 inet static
  bridge-ports tap0
  address 10.0.0.1
  netmask 255.255.255.0
```

Después editamos el archivo de configuración del contenedor /var/lib/lxc/una-caja/config para añadir el parámetro link que nos conectará con la interfaz puente br0:

```
# Template used to create this container: /usr/share/lxc/templates/lxc-debian
# Parameters passed to the template:
# For additional config options, please look at lxc.container.conf(5)
lxc.network.type = veth
lxc.network.flags = up
lxc.network.link = br0
lxc.network.name = lxcnet0

lxc.network.hwaddr = 00:16:3e:57:2c:4d
lxc.rootfs = /var/lib/lxc/una-caja/rootfs

# Common configuration
lxc.include = /usr/share/lxc/config/debian.common.conf

# Container specific configuration
lxc.mount = /var/lib/lxc/una-caja/fstab
lxc.utsname = una-caja
lxc.arch = amd64
```

Finalmente vamos a comprobar que el puente funciona.

Antes de arrancar el contenedor tenemos lo siguiente:

![captura35](http://i.imgur.com/hP7WURT.png)

Y después de arrancar el contenedor vemos que está levantada:

![captura36](http://i.imgur.com/vB1nziL.png)

## Ejercicio 3.1 ##
**Crear y ejecutar un contenedor basado en Debian.**

Ejecutando el comando lxc-checkconfigure me faltaban los módulos de user namespaces y Cgroup memory controller.

Para solucionar el problema he tenido que actualizar mi versión del kernel desde la 3.6 a la 3.16

Ya lo hice para comprobar el puente en el paso anterior.

Para instalar una máquina basada en debian ejecutamos:

```
sudo lxc-create -t debian -n una-caja
```

Para ejecutar la caja usamos:

```
sudo lxc-start -n una-caja

```

Tenemos que usar el usuario y contraseña que nos dan al crear el contenedor. Luego podremos modifcarlo dentro.

## Ejercicio 3.2 ##
**Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro.**

Creamos el táper con:
```
$ sudo lxc-create -t fedora -n caja-fedora
```

Tarda un rato en descargar e instalar así que hay que ser paciente.
Una vez instalado nos da un mensaje:

![captura37](http://i.imgur.com/vyHAJjl.png)

Como podemos ver en el archivo temporal indicado tenemos la clave de root para entrar por primera vez. Luego podremos cambiarla con passwd.

Ya podemos entrar a nuestro táper Fedora ejecutando:

```
sudo chroot /var/lib/lxc/caja-fedora/rootfs
```

Probamos una aplicación de Fedora, por ejemplo que el gestor de paquetes yum funciona:

![captura38](http://i.imgur.com/wBOxAJG.png)



## Ejercicio 4.1 ##
**Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.**

He instalado lxc-webpanel de la siguiente forma:

```
wget http://lxc-webpanel.github.io/tools/install.sh
chmod +x install.sh
sudo ./install.sh
```

De esta forma el script de instalación automática me instala todas las dependencias que hacen falta:

![captura39](http://i.imgur.com/DbTeYrj.png)

Al final de la instalación nos dice que podemos usar la aplicación web en el puerto 5000 del servidor.

Entramos introduciendo los credenciales por defecto: usuario: admin, contraseña: admin

![captura40](http://i.imgur.com/oL5LDn2.png)

Como podemos ver el panel nos muestra el uso de CPU, memoria y almacenamiento del sistema anfitrión,  diferentes opciones como inciar las máquinas, asignarles recurosos, habilitar puentes de red, etc.

Los contenedores que tenemos instalados nos aparecen en el menú de la izquierda y podremos seleccionarlos para editar su configuración. Abajo podremos arrancarlos y pararlos como se ve a continuación.

Arrancamos un contenedor dándole a Start, veremos que ahora se pone en estado 'Running':

![captura41](http://i.imgur.com/vSNYf1r.png)



## Ejercicio 4.2 ##
**Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.**

En el panel de administración del contenedor podremos modificar estos parámetros y restringir su uso. En mi caso he puesto que solo pueda utilizar 2 núcleos (0 y 1) y bajarle el tope de memoria y memoria de intercambio que puede utilizar.

![captura42](http://i.imgur.com/h9ZTgw6.png)

## Ejercicio 5 ##
**Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.**

Debido a muchos problemas con lxc en Debian, mi sistema operativo host (imposible asignar bridge, lxc webpanel se cuelga, etc) y mucha, pero mucha, pérdida de tiempo voy a instalar las cajas en una máquina virtual de Ubuntu (será el que haga de host para este ejercicio y los que tengan que ver con cajas).

He instalado nginx en el contenedor y en la jaula, ambas con el mismo sistema operativo (Ubuntu) instalado:

```
sudo apt-get install nginx
```

Inciamos el servicio:

``` 
sudo service nginx start
```

Después he instalado también apache2-utils en el host para hacer pruebas.

Comprobamos que efectivamente nginx está funcionando en ambos sistemas:

![caputura53](http://i.imgur.com/oYygabi.png)

Ahora vamos a realizar tests con apache benchmark. Para que los tests sean fiables debemos repetir varias pruebas y evauluar una media y desviación típica.

Para los tests usaré la orden  ab -n 300000 -c 10 http://<ip del servidor\>/ de manera automática haciendo un script como este:

```
#!/bin/bash

for i in {1..10}
do
	echo "----------------" >> tests.txt
	echo "PRUEBA $i" >> tests.txt
	echo "----------------" >> tests.txt
	ab -n 300000 -c 10 http://10.0.3.110/ >> tests.txt
done
```

Resultados de los tests:


|             |                      |         jaula           |                                |                      |       contenedor        |                                |
|:-----------:|:--------------------:|:-----------------------:|:------------------------------:|:--------------------:|:-----------------------:|:------------------------------:|
|             | Tiempo ejecución (s) | Solicitudes por segundo | Velocidad transferencia (KB/s) | Tiempo ejecución (s) | Solicitudes por segundo | Velocidad transferencia (KB/s) |
|   Prueba 1  |        43,556        |         6887,74         |             5737,54            |        57,506        |         5216,86         |             4345,69            |
|   Prueba 2  |        43,227        |         6940,16         |             5781,21            |        60,859        |         4929,40         |             4106,23            |
|   Prueba 3  |        42,694        |         7026,78         |             5853,36            |        55,877        |         5368,95         |             4472,37            |
|   Prueba 4  |        44,093        |         6803,78         |             5667,60            |        54,853        |         5469,12         |             4555,82            |
|   Prueba 5  |        45,075        |         6655,64         |             5544,20            |        53,499        |         5607,57         |             4671,15            |
|   Prueba 6  |        43,839        |         6843,15         |             5700,40            |        55,122        |         5442,42         |             4533,58            |
|   Prueba 7  |        45,513        |         6591,49         |             5490,76            |        54,176        |         5537,49         |             4612,77            |
|   Prueba 8  |        46,804        |         6409,75         |             5339,37            |        59,756        |         5020,45         |             4182,07            |
|   Prueba 9  |        46,360        |         6471,15         |             5390,52            |        54,107        |         5544,52         |             4618,63            |
|  Prueba 10  |        41,541        |         7221,83         |             6015,84            |        63,368        |         4734,26         |             3943,68            |
|             |                      |                         |                                |                      |                         |                                |
|    Media    |         44,2702      |         6785,147        |            5652,08             |        56,9123       |         5287,104        |            4404,199            |
| Desviación  |         5,723        |         254,107         |            211,673             |         3,353        |         299,116         |            249,165             |


Obtiene mejores tiempos de respuesta la jaula (más de 10 segundos de diferencia), trata más solicitudes por segundo y su velocidad de transferencia es mayor. Podemos concluir claramente con que la jaula ofrece un rendimiento superior al contenedor en todos los aspectos.

## Ejercicio 6.1 ##
**Instalar juju.**

He instalado juju desde mi máquina virtual de ubuntu para evitar catástrofes nucleares en mi sistema anfitrión como sigue:

![captura44](http://i.imgur.com/hkvkZL0.png)

He editado el archivo nano ~/.juju/environments.yaml para añadir la configuración local:

![captura45](http://i.imgur.com/3Ptd8Ng.png)

Después he instalado mongodb y al intentar crear un táper con juju me advierte de que falta un paquete por instalar:

![captura46](http://i.imgur.com/j8e5x30.png)

Lo instalamos tal y como el mismo programa nos dice que debemos hacer:

```
sudo apt-get install juju-local
```

Ahora podremos crear un táper con

```
juju bootstrap
```

## Ejercicio 6.2 ##
**Usándolo, instalar MySQL en un táper.**

Para instalar MySQL usamos el encanto mysql:

```
juju deploy mysql
```

He seguido los pasos de los [apuntes](http://jj.github.io/IV/documentos/temas/Contenedores#configurando-las-aplicaciones-en-un-tper) para instalar juju y configurarlo, por lo que además ya tengo instalado también mediawiki. Por lo que mi configuración actual es esta:

![captura47](http://i.imgur.com/t2gBaiD.png)

# Ejercicio 7.1 ##
**Destruir toda la configuración creada anteriormente**

Para destruir toda la configuración tendremos que destruir...

Unidades:

```
sudo juju destroy-unit mysql/0
sudo juju destroy-unit mediawiki/0
```

Relaciones:

```
sudo juju remove-relation mediawiki:db mysql:db
```

Máquinas:

```
sudo juju destroy-machine 2
sudo juju destroy-machine 1
```

Servicios:

```
juju remove-service mediawiki
```

Finalmente veremos que tenemos el estado con sólo la máquina 0:

![captura48](http://i.imgur.com/YZXT8A7.png)

## Ejercicio 7.2 ##
**Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.**

Ahora voy a repetir los pasos que hice antes para añadir mediawiki, mysql y la relación entre ellos.

![captura49](http://i.imgur.com/SuO4ShD.png)

Las máquinas ahora tienen los números 3 y 4 siguiendo el orden de las anteriores aunque las hayamos destruido.
Esta sería la configuración que finalmente nos queda:

![captura50](http://i.imgur.com/oe3go0V.png)

![captura51](http://i.imgur.com/v38P4RP.png)

Tendremos ya el entorno con mediawiki funcionando al que podremos acceder introduciendo la ip de la máquina:

![captura52](http://i.imgur.com/wSWDDtq.png)


## Ejercicio 7.3 ##
**Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.**

Con este script podremos desplegar mediawiki en sistemas ubuntu con una sola orden:

```
#!/bin/bash

# Script para configurar automaticamente juju con mysql y mediawiki

# Instalar software necesario
sudo add-apt-repository ppa:juju/stable
sudo apt-get update && sudo apt-get install juju-core && sudo apt-get install juju-local
# Editar el archivo de configuración para añadir entorno local
perl -pi -e 's/default:\ amazon/#default:\ amazon\ndefault:\ local/g' ~/.juju/environments.yaml
# Inicializar el entorno de juju
juju init
# Seleccionar un entorno de trabajo local
juju switch local
# Crear el táper
juju bootstrap
# Desplegar mediawiki
juju deploy mediawiki
# Desplegar mysql
juju deploy mysql
# Crear la relación necesaria entre mediawiki y mysql
juju add-relation mediawiki:db mysql:db
# Publicar el acceso a mediawiki
juju expose mediawiki
```

## Ejercicio 8 ##
**nstalar libvirt. Te puede ayudar esta guía para Ubuntu.**

Los pasos que he seguid para instalar libvirt son los siguientes:

Instalar kvm y libvirt-bin:
```
sudo apt-get install kvm libvirt-bin
```

Logearme como root y añadir a mi usuario al grupo libvirtd:
```
su
adduser julio libvirtd
exit
```

Instalar virtinst:

```
sudo apt-get install virtinst
```

## Ejercicio 9 ##
**Instalar un contenedor usando virt-install**

Voy a usar una iso con Fedora que tenía guardada para la instalación.

Para la instalación voy a usar el comando que podemos ver en esta [guía](https://help.ubuntu.com/12.04/serverguide/libvirt.html)

Los parámetros que incluye son:

* -n virt-ubuntu: el nombre de la máquina virtual.
* -r 512: la cantidad de memoria RAM en MB que usará la máquina virtual.
* --disk path=/var/lib/libvirt/images/ubuntu-libvirt.img,bus=virtio,size=8: la ruta en la que se almacenará el disco virtual del sistema, el bus que usará dicho disco y el tamaño en GB del mismo.
* -c ubuntu1310server64.iso: la ISO que vamos a instalar en el sistema.
* --accelerate": activa la tecnología de aceleración del kernel.
* --network network=default,model=virtio: el interfaz y modelo de red para la máquina virtual
* --connect=qemu:///system: el hipervisor
* --vnc: exporta la consola virtual del huésped usando VNC.


Procedemos a la instalación:

![captura54](http://i.imgur.com/ywvnEXX.png)

Ahora ejecutando virt-manager podremos gestionar las máquinas desde interfaz gráfica de forma más cómoda:

![captura55](http://i.imgur.com/eBeGsia.png)

Finalmente si abrimos la máquina podremos instalar Fedora desde entorno gráfico:

![captura56](http://i.imgur.com/ap2R81N.png)


## Ejercicio 10 ##
**Instalar docker**  

Para instalar Docker en Debian he seguido esta [guía](https://docs.docker.com/installation/debian/#debian-jessie-8-64-bit)

Instalo con la orden:

```
sudo apt-get install docker.io
```
Y comprobamos que funciona como es debido:

![captura57](http://i.imgur.com/Z011V3p.png)


## Ejercicio 11.1 ##
**Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.**

Con la orden docker pull podemos descargar la imagen que necesitemos como CentOS:

![captura58](http://i.imgur.com/OTL0BCZ.png)

Podemos ver muchas otras imágenes con software preinstalado para desplegar un servicio concreto en [docker hub registry](https://registry.hub.docker.com/)

# Ejercicio 11.2 ##
**Buscar e instalar una imagen que incluya MongoDB**

Esta es la imagen oficial de docker para MongoDB: [mongo](https://registry.hub.docker.com/_/mongo/)

La instalamos con sudo docker pull mongo:

![captura59](http://i.imgur.com/E6bJeLC.png)

Finalmente comprobamos las imagenes que hemos instalado:

![captura60](http://i.imgur.com/6zTPk0j.png)

## Ejercicio 12 ##
**Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.**

Me he creado una cuenta en Docker usando la de github:

![captura61](http://i.imgur.com/Z4tzUzO.png)

Creamos un repositorio donde guardemos la imagen:

![captura62](http://i.imgur.com/QPCu8c7.png)

He usado la imagen de ubuntu para instalar nginx en ella:

```
sudo docker run -i -t ubuntu /bin/bash
```
Una vez dentro del contenedor creamos un usuario:

![captura63](http://i.imgur.com/xJh3Kkc.png)

Instalamos nginx:

```
sudo apt-get install nginx
```


## Ejercicio 13 ##
**Crear a partir del contenedor anterior una imagen persistente con commit.**

Creamos una nueva imagen usando commit con nginx instalado y la subimos al repositorio de docker usando push:

![captura64](http://i.imgur.com/oyVNgKr.png)

NOTA: Para obtener el id del contenedor al que vamos a hacer commit debemos dejarlo ejecutando en otra terminal y ejecutar "sudo docker ps", de otro modo no se efectuarán los cambios en el contenedor.

Vamos a comprobar que la imagen está disponible en el registro de docker y funcionando. Para ello primero vamos a borrar el contenedor de nginx y su imagen correspondiente:

![captura65](http://i.imgur.com/ua6nO6m.png)

Ahora mismo no hay rastro de nuestra imagen. Hacemos un pull y la ejecutamos:

![captura66](http://i.imgur.com/H9tArMT.png)

Ya está funcionando nuestro contenedor con nginx instalado.

## Ejercicio 14 ##
**Crear una imagen con las herramientas necesarias para el proyecto de la asignatura sobre un sistema operativo de tu elección.**


Para esto he utilizado el script que hicimos para la práctica 3 que instala todas las dependencias.

Partimos de la imagen de Ubuntu:

sudo docker run 

Dentro del contenedor instalamos wget, descargamos y ejecutamos el script que instala las dependencias:

```
apt-get install wget
wget https://raw.githubusercontent.com/julioxus/iv-aerospace/master/Hito3/install.sh
chmod +x install.sh
./install.sh
```

Cuando termine el script tendremos todo instalado. Abrimos otra terminal y hacemos commit para salvar los cambios:

![captura67](http://i.imgur.com/PmHO16Q.png)

