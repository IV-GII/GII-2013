
#Alberto Mesa Navarro
##Introducción a la infraestructura virtual:concepto y soporte físico

###Ejercicio 1
Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar artículo en Infoautónomos sobre el tema.

Para nuestro ejercicio utilizaremos como ejemplo un servidor [Dell PowerEdge T110 II](http://ecomm.euro.dell.com/dellstore/basket.aspx?c=es&cs=esbsdt1&l=es&s=bsd&itemtype=CFG&oid=84adbb5e-09cf-45a4-b2cc-e2d3d0d09492). 
En lugar de ceñirme a la configuración básica he seleccionado los componentes que más me interesaban y finalmente la configuración que se ha elegido ha sido:

Intel® Xeon® E3-1270v2, 4C/8T, 3.50GHz, 8M Cache, 69W, Turbo.
16GB RAM (2x8GB) 1600Mhz, Bajo voltaje UDIMM. 
Red Hat Enterprise Linux 6.5, (1 año SnS y 1 invitado virtual).
Tarjeta controladora software interna PERC S300 3Gb/s SAS/SATA.
1.2TB 10K RPM SAS 6Gbps 2.5in -No hot swap-.
Controladora de gestión embebida en placa base.
Tarjeta de Red Intel Gigabit ET Dual Port Server Adapter, Cu, PCIe-4.

Precio total del servidor elegido y configurado según mis intereses: 2.310,00 €.
Para trabajar con las amortizaciones primero hay que obtener el precio del servidor SIN IVA (21%): 2.310 - 485,1 = 1.824,9 €.

Amortización a 4 años:desde Oct. 2014 a Oct. 2018.
Para amortizarlo a 4 años, cada 12 meses hay que amortizar un 25% de los 1.824,9 €.
Sabemos que un año completo supone un 25% de la base imponible, pero hay que tener en cuenta que a este año le quedan sólo 3 meses. Por tanto, realizando los cálculos:

Desde 1 Octubre 2.014 a 31 Diciembre 2.014 = 3 meses = 6.25%: 114,06 €.
Desde 1 Enero 2.015 a 31 Diciembre 2.015 = 25%: 456,225 €.
Desde 1 Enero 2.016 a 31 Diciembre 2.016 = 25%: 456,225 €.
Desde 1 Enero 2.017 a 31 Diciembre 2.017 = 25%: 456,225 €.
Desde 1 Enero 2.018 a 30 Sept. 2.018 = 9 meses = 18.75%. (junto a los 3 meses de 2.014 completan el 4º año): 342,17 €.


Amortización a 7 años:
Para amortizarlo a 7 años, cada 12 meses hay que amortizar un 14,29% de los 1.824,9 €.

Desde 1 Octubre 2.014 a 31 Diciembre 2.014 = 3 meses = 3,5725%: 65,195 €. 
Desde 1 Enero 2.015 a 31 Diciembre 2.015 = 14,29%: 260,778 €.
Desde 1 Enero 2.016 a 31 Diciembre 2.016 = 14,29%: 260,778 €.
Desde 1 Enero 2.017 a 31 Diciembre 2.017 = 14,29%: 260,778 €.
Desde 1 Enero 2.018 a 31 Diciembre 2.018 = 14,29%: 260,778 €.
Desde 1 Enero 2.019 a 31 Diciembre 2.019 = 14,29%: 260,778 €.
Desde 1 Enero 2.020 a 31 Diciembre 2.020 = 14,29%: 260,778 €.
Desde 1 Enero 2.021 a 30 Sept. 2.021 = 9 meses = 10,7175%. (junto a los 3 meses de 2.014 completan el 7º año):  195,58€.

###Ejercicio 2
Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.

Máquina en Ninefold:
16.0 GB RAM / 8 VCPUs	16 GB RAM	1000 GB HDD	8 vCPU	~ 19.2 ECU	445,42 euros/año -> 0,05155 euros/hora.

Máquina en Dimension Data:
16 GB RAM / 8 VCPUs 	16 GB RAM	1000 GB HDD	8 vCPU	~ 16 ECU	524,69 euros/año -> 0,06072 euros/hora.

Coste anual al 1% de uso:
1 año = 8760 horas. 1% de uso = 87,6 horas.
Ninefold: 0,05155 euros/hora * 87,6 horas = 4,51578 euros.
Dimension Data: 0,06072 euros/hora. * 87,6 horas = 5,319072 euros.

Coste anual al 10% de uso:
1 año = 8760 horas. 10% de uso = 876 horas.
Ninefold: 0,05155 euros/hora * 876 horas = 45,1578 euros.
Dimension Data: 0,06072 euros/hora. * 876 horas = 53,19072 euros.


###Ejercicio 3
3.1. ¿Qué tipo de virtualización usarías en cada caso? Comentar en el foro.

### RECORDATORIO: Poner comentarios en el foro. ###

3.2. Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.

Para este ejercicio he decidido utilizar un sencillo [Tutorial Perl](http://linuxconfig.org/perl-programming-tutorial). Además se utilizan los siguientes [Pasos para el uso de CDE](http://www.taringa.net/posts/linux/14889225/CDE-herramienta-para-crear-aplicaciones-portables-de-Linux.html) pero adaptado a mi propio script en Perl.

Vamos a seguir sus pasos para la creación de un programa sencillo y la preparación de CDE:

![1](http://s27.postimg.org/eo51afalf/Captur_Files_2.png) .

A continuación utilizamos CDE para el empaquetado:

![2](http://s28.postimg.org/ykohtm6kd/Captur_Files_1.png) .

Y por último lo pruebo en la otra máquina para asegurarnos de que funciona, como demuestra la captura. Hay que tener en cuenta que debemos copiar a la nueva máquina el directorio cde-package para que el portable funcione.

![3](http://s18.postimg.org/ou7r4cd21/Captura_de_pantalla.jpg) .


###Ejercicio 4
Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.

Avanzado Instalarlo y crear una aplicación contenedorizada.

###Ejercicio 5
Instala el sistema de gestión de fuentes git.

###Ejercicio 6
Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README.
Modificar el readme y subir el fichero modificado.




