Ejercicios de Juan Francisco Rodríguez Vílchez
================================================

## Sesión 29-sept-2014 ##

### Ejercicio 1 ###

**Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar este artículo en Infoautónomos sobre el tema.**

Según la ley se establece que el porcentaje máximo de amortización es del 26% anual con un periodo máximo de 10 años.

Precio del servidor= 405,92€, incluido el IVA por lo que deberemos de quitarselo:

El IVA es de 21% que sería un precio de 85,32€ que deberiamos de restar al total, obteniendo un precio final de 320,6€.

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

Voy a proceder a comparar un servidor VPS con uno en nube, para ello he elegido [Hostinger VPS](http://www.hostinger.es/hosting-vps) y [Amazon EC2](http://aws.amazon.com/es/ec2/pricing/).

**Hostinger VPS Plan 2**

* 4.8 Ghz CPU
* 2 GB RAM
* 40GB de disco

Precio: 13.99€ al mes.

**Amazon EC2 t2.small**

* 1 vCPU
* 2 GB RAM
* Almacenamiento EBS

Precio:$0.026 por hora = 0.016€

**Usando sólo un 1% del tiempo:**

* Con Hostinger pagaríamos lo mismo, porque el servicio se cobra por mes contratado independientemente del tiempo utilizado: 13.99€ * 12= 167.88€
* Con Amazons pagaríamos (0.016€ * 24h *30 días * 12 meses) * 0.01 = 1.38€

**Usando el 10% del tiempo:**

* Con Hostinger pagaríamos lo mismo, porque el servicio se cobra por mes contratado independientemente del tiempo utilizado: 13.99€ * 12= 167.88€
* Con Amazons pagaríamos (0.016€ * 24h *30 días * 12 meses) * 0.10 = 13.8€

### Ejercicio 3.2 ###

**Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.**

En mi máquina virtual con Linux Mint instalado, me he bajado el CDE del repositorio de Github correspondiente y lo he instalado en el sistema. Posteriormente, he empaquetado un reloj que te trae de prueba llamado "xclock" con la siguiente orden:

![captura1](http://i.imgur.com/3awd0EF.png)

![captura2](http://i.imgur.com/SsYHtFy.png)

Una vez empaquetado con CDE, me he cambiado a otra máquina virtual con Ubuntu 13 y he desempaquetado el reloj:

![captura3](http://i.imgur.com/wovTtPZ.png)

Podemos observar como se puede ejecutar correctamente sin la necesidad del propio paquete.


### Ejercicio 4 ###

**Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona. Avanzado: Instalarlo y crear una aplicación contenedorizada.**

He procedido a descargar docker siguiendo el siguiente tutorial: http://codehero.co/como-instalar-y-usar-docker/ y me daba el siguiente fallo:

"Cannot connect to the Docker daemon. Is 'docker -d' running on this host?"

Para arreglarlo he usado:

```sh
 "sudo apt-get install apparmor" 
```

Después de instalarlo, he procedido a descargar la misma imagen del tutorial con:

```sh
  sudo docker pull learn/tutorial
```

Una vez descargada, he ejecutado la terminal de la imagen:

![captura9](http://i.imgur.com/JwrIemI.png)

En dicha terminal he instalado Python y nano para escribir un script en Python que nos permite saber si un número es par o impar. Lo he guardado en usr/bin para ejecutarlo posteriormente.

Para guardar los cambios en una imagen nueva:

```sh
  sudo docker commit [ID de la imagen] par
```

Podemos ver las imágenes creadas con:

```sh
  sudo docker images
```
y finalmente ejecutar el script con:

```sh
  sudo docker run -i -t par par
```

### Ejercicio 5 ###

**Instala el sistema de gestión de fuentes git**

![captura4](http://i.imgur.com/M6Io3nv.png)

### Ejercicio 6 ###

**Crear un proyecto y descargárselo con git: Al crearlo se marca la opción de incluir el fichero README y modificar el readme y subir el fichero modificado.**

He creado un proyecto en GitHub con el fichero README incluido llamado "probando".

Me lo he bajado con el siguiente comando y lo he modificado:

![captura5](http://i.imgur.com/tQVs1Qq.png)

Para subir el fichero modificado he ejecutado los siguiente comandos:

![captura6](http://i.imgur.com/oKZYwzJ.png)

Finalmente, como podemos observar el fichero readme se ha modificado correctamente:

![captura6](http://i.imgur.com/3XYPqy0.png)









