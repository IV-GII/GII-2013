#Introducción a la infraestructura virtual: concepto y soporte físico

##Ejercicio 1

**Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar este artículo en Infoautónomos sobre el tema.**

El concepto de amortización se emplea para explicar cómo los activos de una empresa comienzan a perder valor a lo largo del tiempo y esa pérdida se amortiza teniendo en cuenta los años de vida del activo, por lo tanto, lo más lógico es amortizar la mayor cantidad posible en los primeros años antes de que el producto se devalúe. De acuerdo con el artículo que se invita a consultar sobre el tema, puedes imputar anualmente como gasto deducible en concepto de amortización un máximo del 25% de la base imponible o precio antes de IVA.
Teniendo en cuenta esta definición, vamos a analizar cómo podemos amortizar el valor de un servidor [HP PROLIANT DL320E G8 E3-1220V3 3.10GHz 4GB DDR3 1U de HP](https://www.arturogoga.com/2011/12/23/tutorial-markdown-manera-simple-de-crear-texto-con-formato-especiales/) con valor de 599€ en 4 y 7 años:

###Amortización a 4 años:

Considerando que lo hemos comprado a principio de año:

Habría que imputar el máximo permitido todos los años para poder cubrir el total del valor en los 4 años.

* 2015 --> 25% = 149,75€
* 2016 --> 25% = 149,75€
* 2017 --> 25% = 149,75€
* 2018 --> 25% = 149,75€
	
###Amortización a 7 años:

Considerando que lo hemos comprado a principio de año:

Ahora si podríamos jugar con el % a imputar cada año ya que tenemos un margen de tiempo mayor, por lo tanto, vamos a amortizar el mayor porcentaje posible al principio (cuando el valor del producto aún no se ha devaluado) disminuyendo progresivamente conforme pasan los años (que el valor del producto irá decreciendo).

* 2015 --> 25% = 149,75
* 2017 --> 22% = 131,78
* 2018 --> 18% = 107,82
* 2018 --> 15% = 89,85
* 2019 --> 10% = 59,9
* 2020 -->  6% = 35,94
* 2021 -->  4% = 23,96

##Ejercicio 2

**Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.**

Vamos a comparar los dos servicios en la nube más populares, [Microsoft Azure](http://azure.microsoft.com/es-es/pricing/calculator/?scenario=virtual-machines) y [Amazon EC2](http://aws.amazon.com/es/ec2/pricing/):

**Microsoft Azure Serie D3 para Linux**
* 4 núcleos, 14 GB RAM, 100 GB SSD
* €0,626/hr = $0,791/hr

**Amazon EC2 m3.xlarge**
* 4 núcleos, 15 GiB RAM, 2 x 40 SSD
* $0.280 por hora

Si usamos un 1% del tiempo:
 * **Azure:** ($0,791x24hx365dias)*0,01 = 69,2916$
 * **Amazon EC2** ($0,280x24hx365dias)*0,01 = 24,528$ 
 
Si usamos un 10% del tiempo:
 * **Azure:** ($0,791x24hx365dias)*0,1 = 692,916$
 * **Amazon EC2** ($0,280x24hx365dias)*0,1 = 245,28$ 
 
 Luego la opción Amazon es casi 3 veces más barata que la opción Azure.
