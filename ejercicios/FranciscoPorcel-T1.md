# Introducción a la infraestructura virtual: concepto y soporte físico

## Ejercicio 1

#### Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años.

En primer lugar consultamos el precio del ordenador tipo servidor. En [PCComponentes](http://www.pccomponentes.com/hp_proliant_ml310e_g8_xe_e3_1220_8gb_2tb.html?gclid=COOf7pHbm8ECFSXHtAodpjkA8w) podemos encontrar un servidor con un precio de 644 euros. 

Ese será el precio con IVA, por lo que habrá que restarselo. DE esta forma, el precio que podremos amortizar será:

644 - (21% de 644) = 508.76 euros

### Amortización en 4 años (suponiendo como fecha de compra el 1 de enero):

Como podemos leer en la fuente sugerida en la práctica, podemos amortizar cada año un 25% del precio inicial del servidor. Por ello, la amortización a cuatro años consistiría en cubrir cada año un 25% del precio. De esta manera:

* 25% en 2014 = 127.19 euros
* 25% en 2015 = 127.19 euros
* 25% en 2016 = 127.19 euros
* 25% en 2017 = 127.19 euros

### Amortización en 7 años (suponiendo como fecha de compra el 1 de enero):

En este caso, nos interesará deducir un mayor porcentaje del precio en los primeros años, ya que al principio es cuando hacemos la inversión. De esta forma podríamos deducir cada año de la siguiente forma:

* 25% en 2014 = 127.19 euros
* 25% en 2015 = 127.19 euros
* 15% en 2016 = 76.314 euros
* 15% en 2017 = 76.314 euros
* 10% en 2018 = 50.876 euros
* 5% en 2019 = 25.438 euros
* 5% en 2020 = 25,438 euros

## Ejercicio 2

#### Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.

Vamos a comparar el precio con los porcentajes de uso especificados entre este [servidor cloud](http://aws.amazon.com/es/ec2/pricing/) de amazon y este [servidor cloud](http://azure.microsoft.com/es-es/pricing/details/cloud-services/) de Azure.

Las características del servidor amazon son:

* RAM = 4GB
* Disco duro =  220GB
* Cores = 2 cores
* Precio por hora = 0,04 euros

Las características del servidor azure son:

* RAM = 3.5GB
* Disco duro =  135GB
* Cores = 2 cores
* Precio por hora = 0,1192

### Para un uso de un 1% en un año:

En este caso el número de horas que pagaríamos sería: 
- 1% de (24 horas * 365 días) = 87.6 horas

Por tanto tendríamos un precio total para ambas opciones de:

* Servidor azure = 87.6 horas * 0.1341 euros = 11.74716 euros
* Servidor amazon = 87.6 horas * 0.04 euros =  3.504 euros

### Para un uso de un 10% en un año:

En este caso el número de horas que pagaríamos sería: 
- 10% de (24 horas * 365 días) =  876 horas

Por tanto tendríamos un precio total para ambas opciones de:

* Servidor VPS = 876 horas * 0.1341 euros =  117.4716 euros
* Servidor cloud = 876 horas * 0.04 euros = 35.504 euros

Como podemos observar, el precio de amazon es casi tres veces mejor que el de azure, teniendo amazon unas prestaciones algo superiores.

#Ejercicio 3

#### 1. ¿Qué tipo de virtualización usarías en cada caso? Comentar en el foro. (¿Qué tipo de virtualización es la más adecuada para: alojar varios clientes en un sólo servidor, crear un sistema eficiente de web + middleware + base de datos, un sistema de prueba de software e integración continua? Responder aquí y razonar.)

![Respuesta en el foro](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/imagenes/3_1.png)


#### 2. Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.


# Ejercicio 4

#### Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.

Después de realizar el tutorial nos sale un mensaje de felicitación:

![Mensaje de felicitación](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/imagenes/4.png)

# Ejercicio 5

#### Instala el sistema de gestión de fuentes git

Hacemos esto mediante la orden:

* sudo apt-get install git

Una vez hecho esto, debemos clonar la carpeta de GitHub en nuestro ordenador. Para ello ponemos "git clone " y a continuación el enlace a nuestro GitHub. En mi caso:

* git clone [https://github.com/FranciscoPorcel/GII-2014.git](https://github.com/FranciscoPorcel/GII-2014.git)


# Ejercicio 6

#### Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README. Modificar el readme y subir el fichero modificado.

En primer lugar creamos el nuevo proyecto. En mi caso lo he nombrado "Nuevo Proyecto".

![Creación de un nuevo proyecto](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/imagenes/6_1.png)

A continuación nos descargamos la carpeta a nuestro pc.

![Descarga de los archivos](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/imagenes/6_2.png)

Modificamos el archivo README.md.

![Modificación del archivo README.md](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/imagenes/6_3.png)

Subimos la carpeta modificada a GitHub.

![Subimos la carpeta a GitHub](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/imagenes/6_4.png)

Como podemos observar, los cambios se han realizado:

![Cambios realizados en GitHub](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/imagenes/6_5.png)


# Ejercicio 7

#### Comprobar si en la instalación hecha se ha instalado cgroups y en qué punto está montado, así como qué contiene. 

Mi sistema operativo es Ubuntu 14.04 y como se comenta en la documentación cgroups está montado en /sys/fs/cgroup. Esta carpeta contiene una serie de archivos que permiten controlar y monitorizar la actividad de los diferentes grupos de control.

![Punto de montaje de cgroups](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/imagenes/7_1.png)


# Ejercicio 8

#### 1. Crear diferentes grupos de control sobre un sistema operativo Linux. Ejecutar en uno de ellos el navegador, en otro un procesador de textos y en uno último cualquier otro proceso. Comparar el uso de recursos de unos y otros durante un tiempo determinado.

#### 2. Calcular el coste real de uso de recursos de un ordenador teniendo en cuenta sus costes de amortización. Añadir los costes eléctricos correspondientes.

# Ejercicio 9

#### 1. Discutir diferentes escenarios de limitación de uso de recursos o de asignación de los mismos a una u otra CPU.
    
#### 2. Implementar usando el fichero de configuración de cgcreate una política que dé menos prioridad a los procesos de usuario que a los procesos del sistema (o viceversa).

#### 3. Usar un programa que muestre en tiempo real la carga del sistema tal como htopy comprobar los efectos de la migración en tiempo real de una tarea pesada de un procesador a otro (si se tiene dos núcleos en el sistema).

#### 4. Configurar un servidor para que el servidor web que se ejecute reciba mayor prioridad de entrada/salida que el resto de los usuarios.

# Ejercicio 10

#### Comprobar si el procesador o procesadores instalados tienen estos flags. ¿Qué modelo de procesador es? ¿Qué aparece como salida de esa orden?

Mi procesador es un Intel Core 2 Duo. Como salida de la orden aparece la línea en la que se encuentra el flag "vmx". Como mi procesador no es AMD el flag svm no aparece.

![Flags activos](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/imagenes/10_1.png)

# Ejercicio 11

#### Comprobar si el núcleo instalado en tu ordenador contiene este módulo del kernel usando la orden kvm-ok.

Ejecutamos la orden y nos muestra lo siguiente:

![kvm-ok](https://github.com/FranciscoPorcel/GII-2014/blob/master/ejercicios/imagenes/11_1.png)

Por lo cual mi ordenador no contiene este módulo kernel.

# Ejercicio 12

#### 




























