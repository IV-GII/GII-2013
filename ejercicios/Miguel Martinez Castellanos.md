#TEMA 1

## Ejercicio 1
[Fujitsu Primergy TX100 Xeon E3-1220/8GB/1TB](http://www.pccomponentes.com/fujitsu_primergy_tx100_xeon_e3_1220_8gb_1tb.html?gclid=CJmasoPrhsECFVDItAod5woAtA) Tiene un precio de venta al publico de 599€.
Si elegimos una amortizacion del 12%,teniendo en cuenta que el porcentaje maximo es de 26% en un pediodo de tiempo de 10 como maximo.[Fuente de informacion](http://www.gabilos.com/webcontable/amortizacion/estimacion_directa_simplificada.htm)

*En 4 años se tendra que aplicar un 25% para amortizar el pc. Cuota anual: 149 €

*En 7 años se tendra que aplicar un 14,28% para amortizar el pc. Cuota anual : 85.36 €

Pero si elegimos un 12% de amortizacion el ordenador llegara a su amortizacion total en 8 años 4 meses y 12 dias (( 599x0,12)x8,34= 599,47€)


## Ejercicio 2
Vamos a realizar una comparacion entre un servicio de alojamiento en un servidor y alojamiento en un servidor cloud.Segun la web de [Arsys](http://www.arsys.es/hosting?gclid=CPKFjcPelcECFQ3LtAodyVEA4w) obtenemos ambos precios para unas caracteristicas de 6 cores , 8 Gb de Ram y 600 Gb de almacenamiento.

*Servidor Dedicado 225€/mes o 2700€/año.
*Servidor Cloud 285€/mes o 3420€/año.

-Si vemos el precio para un 1% de tiempo usado.

*Servidor Dedicado 27€/año.
*Servidor Cloud 34.2€/año.

-Pero si se usara un 10% del tiempo.

*Servidor Dedicado 270/año.
*Servidor Cloud 342€/año.

##Ejercicio 3.2

Realizamos un script sencillo para realizar una [suma](http://imgur.com/R7GIvGx).Seguidamente con CDE [empaquetamos](http://imgur.com/96CUB6p) el programa y finalmente lanzamos el archivo que se nos creo en la carpeta cde-package para ver si se [ejecuta](http://imgur.com/8oreLxN) sin necesidad de tener instalado python en otra maquina.

##Ejecicio 4

Realizamos el tutorial para comprender el funcionamiento de [docker](http://imgur.com/9kgsvVD) en lenguaje de comandos.

##Ejercicio 5

Instalamos el sistema de gestion de fuentes [git](http://imgur.com/vMqcjaM).

##Ejercicio 6

Creamos un que lo llamaremos Practica y lo descargaremos con git teniendo en cuenta que dicho proyecto debe contener el fichero README.Seguidamente [modificaremos](http://imgur.com/qCVnsAY) el fichero README y actualizamos obteniendo del siguiente [resultado](http://imgur.com/ixOkHtU)

##Ejercicio 7

Comprobamos si en la instalacion se encuentra instalado [cgroups](http://imgur.com/kRI8qFa),y en caso contrario lo montaremos.Una vez realizado el paso anterior procedemos a comprobar el contenido.

##Ejercicio 10

Comprobamos los flags, el tipo de procesador y el resultado a la orden realizada.

-¿Que modelo de procesador es?
  model name	: Intel(R) Core(TM)2 Duo CPU     T6600  @ 2.20GHz

-¿Cual es el resultado a la orden?
  flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx lm constant_tsc arch_perfmon pebs bts rep_good aperfmperf pni dtes64 monitor ds_cpl est tm2 ssse3 cx16 xtpr pdcm sse4_1 xsave lahf_lm

##Ejercicio 11

Comprobamos si el modulo para kvm-ok esta instalado en nuestro sistema,obteniendo el siguiente resultado:

miguel@ubuntu:~$ kvm-ok INFO: Your CPU does not support KVM extensions
KVM acceleration can NOT be used


#TEMA 2

## Ejercicio 1
**Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).**
Instalamos virtualenv desde consola siguiendo los siguientes pasos:

![Paso 1](http://i.imgur.com/b4P7ncJ.jpg)
Instalamos virtualenv...
![Paso 2](http://i.imgur.com/4Lwfky8.jpg)
Comprobamos que funciona realizando un test...
![Paso 3](http://i.imgur.com/RLgnNdC.jpg)


## Ejercicio 2
**Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.**
Nos damos de alta en OpenShift siguiendo los pasos:
Realizamos el registro en la web de [Openshift](https://www.openshift.com/)
![imagen2-1](http://i.imgur.com/II0ELuU.jpg)


## Ejercicio 3
**Crear una aplicación en OpenShift y dentro de ella instalar WordPress.**
Para crear la aplicacion clicamos en "Create my first app".
![imagen3-1](http://i.imgur.com/5vQugDx.jpg)
Una vez buscada la aplicacion de wordpress las configuramos.
![imagen3-2](http://i.imgur.com/GuhWpYJ.jpg)
Nos saldra una ventana donde podremos observar que nuestra aplicacion se ha creado correctamente.
![imagen3-3](http://i.imgur.com/Judnbcr.jpg)
Introducimos los datos para wordpress.
![imagen3-4](http://i.imgur.com/iSM6F6c.jpg)
Mensaje de bienvenida a WordPress.
![imagen3-5](http://i.imgur.com/CyQDKso.jpg)

## Ejercicio 4

**Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.**
En primer lugar siguiendo el [tutorial](https://developers.google.com/apps-script/guides/menus#custom_menus_in_google_docs_sheets_or_forms) para la creacion y modificacion de menu creamos archivo de tipo documento para codigo en google app y desde el menu herramientas clicaremos en la opcion "Editor de secuencias de Comandos".Una vez ahi podremos trabajas con el codigo que os muestro a continuacion sacado del tutorial.

![imagen4-1](http://i.imgur.com/vD9Kjc0.jpg)

## Ejercicio 5
**Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.**
Realizando la siguiente busqueda en google "Build automation python" nos encontramos una [wiki de python](https://wiki.python.org/moin/ConfigurationAndBuildTools) en la que nos habla de los distintos sistemas de construccion para este lenguaje.

Donde nos encontramos con [Buildit](https://software.agendaless.com/Members/chrism/software/buildit/README.txt)como el sistema mas sencillo y facil de usar.

## Ejercicio 6
**Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma. **


