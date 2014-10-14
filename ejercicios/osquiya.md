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
VPS Hostinger -> para el plan 2, el precio al mes es de 13.99 (17.55$)
		USO: el de un mes 17,55$

Comparación de uso de 10% (36.5 días):

Amazon -> para la máquina c3.large, el precio por hora es de 0.116$.
	  USO: 36.5 días * 60h/días * 0.116$ = 254.04$
VPS Hostinger -> para el plan 2, el precio al mes es de 13.99 (17,55$)
		USO: el de dos meses 17,55$ * 2 = 35,1$

La gran diferencia entre ambos proveedores de servicios es que, en servidores 
cloud de amazon, cobran por el uso que se de al servicio mientras que 
VPS Hostinger cobra por meses, independientemente de cuanto uses el servicio.

**Ejercicio 3.
¿Qué tipo de virtualización usarías en cada caso? Comentar en el foro

Crear un programa simple en cualquier lenguaje interpretado para Linux,
 empaquetarlo con CDE y probarlo en diferentes distribuciones.**
