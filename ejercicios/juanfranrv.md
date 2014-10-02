Ejercicios de Juan Francisco Rodríguez Vílchez
================================================

## Sesión 29-sept-2014 ##

### Ejercicio 1 ###

**Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar este artículo en Infoautónomos sobre el tema.**

Según la ley se establece que el porcentaje máximo de amortización es del 26% anual con un periodo máximo de 10 años.

Precio del servidor= 405,92€, incluido el IVA por lo que deberemos de quitarselo:

El IVA es 21% que sería un precio de 85,32€ que deberiamos de restar al total obteniendo un precio final de 320,6€.

[Servidor elegido](http://www.amazon.es/HP-ProLiant-MicroServer-G8-Servidor/dp/B00DJVRVFE/ref=sr_1_8?ie=UTF8&qid=1411980980&sr=8-8&keywords=servidor )

**Coste de amortización a cuatro años:**

Teniendo en cuenta que obtenemos un 25% (100%/4) del precio total del servidor cada año:

* Año 2014: 20,03€ de 3 meses que quedan de 2014 contando desde el día 1/10/2014
* Año 2015: 80,15€
* Año 2016: 80,15€
* Año 2017: 80,15€
* Año 2018: 60,11€ de los 9 meses restantes para completar el cuarto año.

**Coste de amortización a siete años:**

Teniendo en cuenta que obtenemos un 14,28% (100%/7) del precio total del servidor cada año:

* Año 2014: 11,44€ de 3 meses que quedan de 2014 contando desde el día 1/10/2014
* Año 2015: 45,78€
* Año 2016: 45,78€
* Año 2017: 45,78€
* Año 2018: 45,78€
* Año 2019: 45,78€
* Año 2020: 45,78€
* Año 2021: 34,33€ de los 9 meses restante para completar el séptimo año.

## Sesión 30-sept-2014 ##

### Ejercicio 2 ###

**Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.**

Voy a proceder a comparar dos de los servidores cloud más conocidos como son [Microsoft Azure](http://azure.microsoft.com/es-es/pricing/calculator/?scenario=virtual-machines) y [Amazon EC2](http://aws.amazon.com/es/ec2/pricing/).

**Microsoft Azure Serie D2 para Windows**

-2 núcleos
-7 GB RAM
-250 GB de disco
-SSD de 40GB

Precio: 0.388€ por hora.

**Amazon EC2 m3.large**

-2 núcleos
-7.5 GB RAM
-SSD de 32GB

Precio:$0.140 por hora = 0.111€

**Usando sólo un 1% del tiempo:**

* Con Azure pagaríamos (0.388€ * 24h * 30 días * 12 meses) * 0.01 = 33,52€
* Con Amazons pagaríamos (0.111€ * 24h *30 días * 12 meses) * 0.01 = 9,59€

**Usando el 10% del tiempo:**

* Con Azure pagaríamos (0.388€ * 24h * 30 días * 12 meses) * 0.1 = 335,2€
* Con Amazons pagaríamos (0.111€ * 24h *30 días * 12 meses) * 0.1 = 95,9€

### Ejercicio 3.2 ###

**Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.**

En mi máquina virtual con Linux Mint instalado, me he bajado el CDE del repositorio de Github correspondiente y lo he instalado en el sistema. Posteriormente, he empaquetado un reloj que te trae de prueba llamado "xclock" con la siguiente orden:

![captura1]:(http://i.imgur.com/3awd0EF.png)

![captura2]:(http://i.imgur.com/SsYHtFy.png)

Una vez empaquetado con CDE, me he cambiado a otra máquina virtual con Ubuntu 13 y he desempaquetado el reloj:

![captura3]:(http://i.imgur.com/wovTtPZ.png)

Podemos observar como se puede ejecutar correctamente sin la necesidad del propio paquete.







