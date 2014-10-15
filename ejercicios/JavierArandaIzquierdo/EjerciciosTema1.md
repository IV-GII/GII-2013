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

| Sistema Operativo | Tipo | CPU Cores | RAM | Datacenter | $/hora | $/dia | $/mes | $/año | Precio 1% | Precio 10% |
|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|
| Linux | n1-standar1 | 1 | 3,75 GB | Europa | 0,05$ | 1,16$ | 34,87$ | 418,44$  |  4,38$ | 43,80$ |
| Linux | n1-standar2 | 2 | 7,5 GB | Europa | 0,09$ | 2,33$ | 69,75$ | 837$  |  7,88$ | 78,84$ |
| Linux | n1-standar4 | 4 | 15 GB | Europa | 0,19$ | 4,65$ | 139,49$ |  1673,88$ | 16,64$  | 116,44$ |
| Linux | n1-standar8 | 8 | 30 GB | Europa | 0,39$ | 9,30$ | 278,98$ | 3347,76$  | 34,16$  | 341,64$ |
| Linux | n1-standar16 | 16 | 60 GB | Europa | 0,78$ | 18,60$ | 557,96$ | 6695,52$  | 68,32$  | 683,28$ |


[Arsys:](www.arsys.es/servidores/dedicados)

| Sistema Operativo | Tipo | CPU Cores | RAM | €/hora | €/mes | €/año | Precio 1% | Precio 10% |
|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|
| CentOS 6 | Servidor S2 | 1 x 2 Core | 2 GB | 0,17€ | 125€ | 1500€ |  14,90€ | 148,92€ |
| CentOS 6 | Servidor S4 | 1 x 4 Core | 4 GB | 0,24€ | 175€ | 2100€ |  21,02€ | 210,24€ |
| CentOS 6 | Servidor S6 | 1 x 6 Core | 8 GB | 0,31€ | 225€ | 2700€ | 27,16€  | 271,56€ |
| CentOS 6 | Servidor S8 | 2 x 4 Core | 8 GB | 0,38€ | 275€ | 3300€ | 33,29€  | 332,88€ |

Con esta comparación, se ve como la virtualizacion es mucho mas barato que los servidores dedicados.

### Ejercicio 3
#### 1.¿Qué tipo de virtualización usarías en cada caso? Comentar en el foro.
#### 2.Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.

#####[Primera parte](https://github.com/JJ/GII-2014/issues/71)

##### Segunda parte

El codigo del programa es un simple HolaMundo en Python:

```
#!/usr/bin/env python
print "Hola mundo en Python"
```

- Instalamos CDE con apt-get install cde
- Ejecuto el programa con "cde python holamundo"
- Me voy a mi directorio "/cde-package/cde-root/home/javi/Escritorio"
- Ejecuto "./python.cde holamundo" y funciona

### Ejercicio 4
#### Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.Avanzado Instalarlo y crear una aplicación contenedorizada


