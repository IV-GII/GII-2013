#Ejercicios de Pablo Pérez Ruiz

###Ejercicio 1: 
####Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años.

[SERVIDOR HP PROLIANT ML350P GEN8 E5-2620V2 2.1 GHz 8GB DDR3 5U](http://www.dynos.es/servidor-hp-proliant-ml350p-gen8-e5-2620v2-2.1-ghz-8gb-ddr3-5u--4514953642119__736978-425.html)

El coste del servidor es de 2569€. Le quitamos previamente el IVA al precio total:

2569*0.79= 2029.51€ Suponiendo que adquirimos el equipo a principios de año, contamos el año entero a la hora de amortizar:

**Amortización a 4 años:** cada año se amortizaría un 25% con lo que amortizaríamos: 2029.51*0.25 = 507.3775€

**Amortización a 7 años:** cada año se amortizaría un 14.28% con lo que amortizaríamos: 2029.51*0.1428 = 289.814€


###Ejercicio 2: 
####Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.

[Servidor en Amazon:](http://aws.amazon.com/es/ec2/pricing/)

  EC2
  4GB de RAM
  2 Cores
  0.052$ por hora (0.04155€)

[VPS Hostinger:](http://www.hostinger.es/hosting-vps)

  Plan 4 (27.99€ al mes)
  4GB de RAM
  80GB de Almacenamiento
  CPU 9,6Ghz
  
  **Si se usa sólo un 1% del tiempo:**
  
  Amazon: 0.04155 * 24h * 365.25 dias * 0.01 = 3.6423€
  
  Hostinger: 27.99 * 12 meses = 335.88€ ( Ya que no cobra por tiempo sino por meses)
  
  **Si se usa sólo un 10% del tiempo:** 
  
  Amazon: 0.04155 * 24h * 365.25 dias * 0.1 = 36.42273€
  
  Hostinger: 27.99 * 12 meses = 335.88€ ( Ya que no cobra por tiempo sino por meses)
  
  

###Ejercicio 3: 
####¿Qué tipo de virtualización usarías en cada caso? Comentar en el foro
Leer el comentario en el foro [aquí.](https://github.com/JJ/GII-2014/issues/71#issuecomment-59169569)
####Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.



###Ejercicio 4:
####Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.
Tutorial realizado. <img src="http://i62.tinypic.com/o77mo0.png"></img>
####Avanzado Instalarlo y crear una aplicación contenedorizada.
Hacemos sudo apt-get install docker.io en la terminal.

###Ejercicio 5
####Instala el sistema de gestión de fuentes git:


