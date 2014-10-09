Ejercicios de Julio Martínez Martínez-Checa
============================

## Sesión 29-sept-2014

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

## Ejercicio 6 ##

He creado un proyecto en GitHub con el fichero readme incluido.

Lo he descargado con git, y he añadido información al README haciendo lo siguiente:

![captura6](http://i.imgur.com/1egEtNj.png)

Aquí podemos ver cómo se ve en GitHub actualizado:

![captura7](http://i.imgur.com/dPMViHs.png)