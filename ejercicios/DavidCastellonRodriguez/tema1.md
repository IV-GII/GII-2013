#Ejercicio 1

###### Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar este artículo en Infoautónomos sobre el tema.

El [servidor elegido](http://www.dynos.es/servidor-blade-hp-proliant-bl460c-gen8-xeon-e5-2640v2-2ghz-32gb-ddr3--4514953608993__724085-B21.html) es un HP Blade Proliant con CPU	Intel Xeon E5-2640V2 / 2 GHz, 32GB de RAM hasta máx 256GB... con un precio de 3230,00€

En primer lugar eliminamos los impuestos (21%) para obtener el precio neto del servidor:

3230,00€ / 1,12 = 2669,42€

La amortización a cuatro años sería:

2014 : 25% = 667,36€
2015 : 25% = 667,36€
2016 : 25% = 667,36€
2017 : 25% = 667,36€

La amortización a siete años sería:

2014 : 15% = 400,41€
2015 : 15% = 400,41€
2016 : 15% = 400,41€
2017 : 15% = 400,41€
2018 : 15% = 400,41€
2019 : 15% = 400,41€
2020 : 10% = 266,94€

---
#Ejercicio 2

###### Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.

Como proveedor de servicios en la nube he consultado Google Compute Engine:

Por una máquina standard con 2 cores y 8 gigas de ram y al 10% del tiempo el coste mensual es de 9.97$/mes ~ 120$/año, y un uso del 1% serían 1$/mes = 12$/año

Como proveedor de alojamiento en internet he chequeado [Hostminio](http://hostminio.es/alojamiento-web/)
cuyo plan más caro son 5,99€/mes = 72€/mes y el servicio de hosting es del 100%.

Depende del tiempo de uso que vayamos a tener y la potencia requerida nos saldrá más beneficioso una opción u otra.

---
#Ejercicio 3

###### 1.- ¿Qué tipo de virtualización usarías en cada caso?

<>Comentar en el foro<>
###### 2.- Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.

En primer lugar instalo CDE con el comando:

`sudo apt-get install cde`

tras esto creo un programa en Linux, por ejemplo un `echo "Hello World!"`

Para empaquetar el programa ejecuto el siguiente comando:
`./cde ./hello.sh`

y para ejecutarlo con CDE deberemos introducir la ruta hasta el archivo hello.sh.cde que será el que llame al programa cde-exec y ejecutará el programa que hemos empaquetado con CDE.

[Referencia](https://github.com/germaaan/IV_GMM/blob/master/TEMA1/ejercicio03.md)

---