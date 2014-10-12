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

* Servidor azure = 876 horas * 0.1341 euros =  117.4716 euros
* Servidor amazon = 876 horas * 0.04 euros = 35.04 euros

Como podemos observar, el precio de amazon es casi tres veces mejor que el de azure, teniendo amazon unas prestaciones algo superiores.

#Ejercicio 3

#### 1. ¿Qué tipo de virtualización usarías en cada caso? Comentar en el foro. (¿Qué tipo de virtualización es la más adecuada para: alojar varios clientes en un sólo servidor, crear un sistema eficiente de web + middleware + base de datos, un sistema de prueba de software e integración continua? Responder aquí y razonar.)

![Respuesta en el foro](/home/franps32/Escritorio/IV/Seleccion_001.png)

* Para alojar varios clientes en un sólo servidor considero que la mejor opción sería la "virtualización a nivel de sistema operativo", ya que tanto anfitrión como cliente tendrían el mismo sistema operativo, lo que facilitaría en gran medida la comunicación y las actualizaciones y eliminaría posibles conflictos.

* Para crear un sistema eficiente de web + middleware + BD creo que la mejor opción sería optar por una "virtualización plena", ya que son muchos los recursos necesarios para crear este entorno eficiente, por lo que necesitaremos todos los recursos posibles.

* Para un sistema de prueba de software e integración considero que la mejor virtualización es la de "Entornos de desarrollo". De esa forma se podrá analizar el software en un entorno lo más cercano posible a la realidad por lo que el desarrollo podrá ser mucho más eficiente.

#### 2. Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.


# Ejercicio 4

#### Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.









