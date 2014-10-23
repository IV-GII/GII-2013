# Ejercicios de Óscar Sánchez Martínez #
## Sesión del día 29/09/2014 ##

** Ejercicio 1.
Consultar en el catálogo de alguna tienda de informática el precio de un 
ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar este artículo
 en Infoautónomos sobre el tema.**

Ejemplo de un servidor:Dell PowerEdge T110 II

[Página del servidor](http://www.dell.com/es/empresas/p/poweredge-t110-2/fs)

Para el servidor escogido de 699 con una amortización del 26% a 10 años, sería:

* Amortización a 4 años: 72,696
* Amortización a 7 años: 127,218

**Ejercicio 2.
Usando las tablas de precios de servicios de alojamiento en Internet y de 
proveedores de servicios en la nube, Comparar el coste durante un año de 
un ordenador con un procesador estándar (escogerlo de forma que sea el mismo 
tipo de procesador en los dos vendedores) y con el resto de las características 
similares (tamaño de disco duro equivalente a transferencia de disco duro) 
si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.**

[Página Amazón EC2](http://aws.amazon.com/es/ec2/purchasing-options/dedicated-instances/)

[Página Amazón modelo C3](http://aws.amazon.com/es/ec2/instance-types/)

[Página VPS Hostinger](http://www.hostinger.es/hosting-vps)

Comparación de uso de 1% (3.65 días):

Amazon -> para la máquina c3.large, el precio por hora es de 0.116$.
	  USO: 3.65 días * 60h/días * 0.116$ = 25,404 $
VPS Hostinger -> para el plan 2, el precio al mes es de 13.99 (17.55$)l.
	  USO: el de un mes 17,55$

Comparación de uso de 10% (36.5 días):

Amazon -> para la máquina c3.large, el precio por hora es de 0.116$.
	  USO: 36.5 días * 60h/días * 0.116$ = 254.04$
VPS Hostinger -> para el plan 2, el precio al mes es de 13.99 (17,55$).
	  USO: el de dos meses 17,55$ * 2 = 35,1$

La gran diferencia entre ambos proveedores de servicios es que, en servidores 
cloud de amazon, cobran por el uso que se de al servicio mientras que 
VPS Hostinger cobra por meses, independientemente de cuanto uses el servicio.

**Ejercicio 3.
1.¿Qué tipo de virtualización usarías en cada caso? Comentar en el foro.
2.Crear un programa simple en cualquier lenguaje interpretado para Linux,
 empaquetarlo con CDE y probarlo en diferentes distribuciones.**

1- Escrito en el foro:

-Para alojar varios clientes en un sólo servidor: utilizaría la virtualización a nivel de sistema operativo ya que permite una implementación de clientes y administrador usando un mismo entorno hardware.
-Para crear un sistema eficiente de web + middleware + base de datos: utilizaría la virtualización plena ya que permite adaptar todos los aspectos del ordenador para utilizar programas y sistemas operativos sin necesidad de hacer cambios, lo que permite que sea eficiente.
-Para un sistema de prueba de software e integración continua: utilizaría una virtualización de entornos de desarrollo, ya que esta pensada para proporcionarnos un entorno de pruebas y producción para desarrollar nuestros programas de forma más fácil y sencilla dado que incluye versiones y librerías utilizadas para ese entorno.

2-

**Ejercicio 4.
Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.Avanzado= Instalarlo y crear una aplicación contenedorizada**

Realizado
[Imgur](http://i.imgur.com/XYu94sm.jpg)

Primero hemos instalado la versión de windows que nos proporciona docker, una vez descargado, abrimos el exe y realizamos la instalación.

Una vez instalado nos abrirá una imagen del terminal BOOT2DOCKER,y procederemos a descargar la imagen del tutorial con un " docker pull learn/tutorial " y procedemos a comprobar que funciona escribiendo un simple hello world:

------imagen 1

una vez hecho esto procedemos a instalar nano en la imagen descargada y guardamos los cambios con el nombre de prueba:

-------imagen 2

podemos comprobar que funciona al ejecutar el comando " docker run -i -t prueba nano "

-------- imagen 3

**Ejercicio 5.
Instala el sistema de gestión de fuentes git**
Es tan simple como ejecutar el comando " sudo apt-get install git " en la terminal.

**Ejercicio 6.
Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README, modificar el readme y subir el fichero modificado.**

He creado un proyecto llamado ejercicios con su respectivo README.md, he realizado la clonacion con el comando git clone y accediendo al directorio ejercicios lo he modificado. Solamente queda realizar un commit y el push respectivo como se verá en la imagen.

----------------imagen 1

Y aquí se ve la actualización:

----------------imagen 2

**Ejercicio 7.
Comprobar si en la instalación hecha se ha instalado cgroups y en qué punto está montado, así como qué contiene.**

 En ubuntu 12.04 no esta montado por defecto puesto que estaba vacío cuando lo he mirado con el comando ls asique me he dispuesto a montarlo con la orden " sudo mount -t cgroup cgroup /sys/fs/cgroup/ ".
Comprobandolo de nuevo podemos ver que ya si hay contenido:

----- imagen

En la imagen podemos ver los diferentes archivos con la información de los diferentes recursos del sistema.

**Ejercicio 8.
1.Crear diferentes grupos de control sobre un sistema operativo Linux. Ejecutar en uno de ellos el navegador, en otro un procesador de textos y en uno último cualquier otro proceso. Comparar el uso de recursos de unos y otros durante un tiempo determinado.
2.Calcular el coste real de uso de recursos de un ordenador teniendo en cuenta sus costes de amortización. Añadir los costes eléctricos correspondientes.
**

1.He procedido ha crear los tres grupos especificados en el enunciado del problema en el directorio de cgroup. Dentro se encuentran los archivos necesarios para configurar las tareas. Una vez realizado esto, miramos los ids de las tareas a asociar a cada grupo en el orden de :

grupo1 -> firefox
grupo2 -> gedit
grupo3 -> calculadora

---------imagen1

Por último solo queda comparar los tiempos que se muestran en los archivos cpuacct.usage de cada grupo con lo que nos queda:

------imagen2


**Ejercicio 9.
1.Discutir diferentes escenarios de limitación de uso de recursos o de asignación de los mismos a una u otra CPU.
2.Implementar usando el fichero de configuración de cgcreate una política que dé menos prioridad a los procesos de usuario que a los procesos del sistema (o viceversa).
3.Usar un programa que muestre en tiempo real la carga del sistema tal como htopy comprobar los efectos de la migración en tiempo real de una tarea pesada de un procesador a otro (si se tiene dos núcleos en el sistema).
4.Configurar un servidor para que el servidor web que se ejecute reciba mayor prioridad de entrada/salida que el resto de los usuarios.**


**Ejercicio 10.
Comprobar si el procesador o procesadores instalados tienen estos flags. ¿Qué modelo de procesador es? ¿Qué aparece como salida de esa orden?**

**Ejercicio 11.
Comprobar si el núcleo instalado en tu ordenador contiene este módulo del kernel usando la orden kvm-ok.**

**Ejercicio 12.
Comentar diferentes soluciones de Software as a Service de uso habitual**


