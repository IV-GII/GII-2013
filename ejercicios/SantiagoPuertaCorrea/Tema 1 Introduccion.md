
Introducción a la infraestructura virtual: concepto y soporte físico
====================================================================

Ejercicio 1
-----------
**Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar artículo en Infoautónomos sobre el tema.**


He encontrado el siguiente ordenador tipo servidor: IBM System x 3100 M4 - Servidor (3.1 GHz, Intel Xeon, E3-1220V2, 1000 GB, 7200 RPM, 1000 GB)

[Enlace del servidor consultado a día 07/10/2014](http://www.amazon.es/IBM-System-3100-M4-E3-1220V2/dp/B00H98WRQG/ref=sr_1_8?ie=UTF8&qid=1412070393&sr=8-8&keywords=servidor)

El precio del servidor es de 854,80 Euros IVA incluido. Para la amortización no tendré encuenta el gasto del IVA, debido a que se deduce el año en el que se compra (IVA soportado). 

Para amortizarlo en cuatro años, usando una amortización de forma lineal, anotaré como gasto de amortización cada año:

- Supongo que el servidor lo voy a comprar el 1 de enero de 2015.
- El precio del servidor sin IVA es de 706,45 Euros.
- La amortización lineal 706,45 Euros / 4 Años = **176,60 Euros a amortizar.**

Para amortizarlo en siete años, usando una amortización de forma lineal, anotaré como gasto de amortización cada año:

- Supongo que el servidor lo voy a comprar el 1 de enero de 2015.
- El precio del servidor sin IVA es de 706,45 Euros.
- La amortización lineal 706,45 Euros / 7 Años = **100,90 Euros a amortizar.**


Ejercicio 2
-----------

**Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.**


Voy a comparar un servidor en nube con un VPS, para ello, he elegido como VPS [Gigas a 26/10/2014](https://gigas.com/cloud-vps) y de nube a Amazon EC2 [Amazon EC2 a 26/10/2014](http://aws.amazon.com/es/ec2/pricing/), ambos con 4 gigas de ram y 2 vCore.

**Precios de Amazon EC2 t2.medium**
![EJEC2.png](./capturas/t1/EJEC2.png)

**Precios de Gigas pro**
![EJEC2.png](./capturas/t1/EJ2GI.png)

**Usando un 1% del tiempo:**

- Con Gigas, pagaría siempre el mes completo, puesto que no da la opción para usarlo por horas, en este caso 29 € al mes, entonces el coste por año seria de 29 * 12 = 348 €

- Con Amazon EC2 pagaría (0.0409658487 €/h * 24 h * 30 dias * 12 meses) * 0.01 = 3.53 €

**Usando un 10% del tiempo:**

- Con Gigas, pagaría siempre el mes completo, puesto que no da la opción para usarlo por horas, en este caso 29 € al mes, entonces el coste por año seria de 29 * 12 = 348 €

- Con Amazon EC2 pagaría (0.0409658487 €/h * 24 h * 30 dias * 12 meses) * 0.1 = 35.3 €



