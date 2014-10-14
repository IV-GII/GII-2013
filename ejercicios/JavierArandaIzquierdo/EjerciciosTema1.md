# Ejercicios Tema 1

### Ejercicio 1
##### Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años.

Para este ejercicio he buscado este [servidor Dell](http://configure.euro.dell.com/dellstore/config.aspx?oc=pet110ii04&model_id=poweredge-t110-2&c=es&l=es&s=bsd&cs=esbsdt1&).

Su precio sin IVA 1579,00€. 

La amortizacion de 4 años seria un 25% cada año:

	1579,00€ / 4 años = 394,75 € por año. 

La amortizacion de 7 años seria: 3 años al 20% y 4 años al 10%. Esto nos da los siguientes resultados:

	Tres años a 315,8 €  ------> el 20%
    Cuatro años a 157,9€ ------> el 10%


### Ejercicio 2
##### Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.

Primero calculamos las horas que estaria activo el servidor para el 1% y el 10%, sabiendo que un años tiene 365 dias x 24 horas/dia = 8760 horas

	El 1% de 8760 es 87,60 horas
    El 10% de 8760 es 876 horas

[Google Compute Engine:](https://cloud.google.com/products/calculator/)

| Sistema Operativo | Tipo | CPU Cores | RAM | Datacenter | €/dia | €/mes | €/año | Precio 1% | Precio 10% |
|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|
| Linux | n1-standar1 | 1 | 3,75 GB | Europa | 1,16$ | 34,87$ |   |   |  |
| Linux | n1-standar2 | 2 | 7,5 GB | Europa |  | 69,75$ |   |   |  |


