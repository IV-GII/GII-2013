#Ejercicios de Alfonso Capilla
##Sesión 29-sept-2014

###Ejercicio 1
Búsqueda de servidor para la amortización a 4 y 7 años

[Servidor Dell PowerEdge T110II](http://www.dell.com/es/empresas/p/poweredge-t110-2/pd?oc=pet110ii04&model_id=poweredge-t110-2)

**Características técnicas del servidor**

***Procesador:*** Intel® Xeon® Processor E3-1220v2, 4C/4T, 3.10GHz, 8M Cache, 69W, Turbo.

***RAID:*** C13 -RAID1 with H200, Requires Exactly 2 SAS/SATA Drives.

***Memoria1:*** 16GB Memory (2x8GB) 1600Mhz Dual Ranked Low Volt UDIMM (speed is CPU dependent).

***Disco duro:*** 1TB, SATA, 3.5-in, 7.2K RPM Hard Drive (Cabled).

***Garantía:*** 3Yr ProSupport Plus and Next Business Day On-Site Service.

***Chasis:*** PowerEdge T110 II Tower Chassis, Up to 4x 3.5" Cabled HDDs.

***Precio sin IVA:*** 1579€ 

***IVA:*** 331,59€

**Información sobre las amortizaciones**

En el trimestre fiscal se puede deducir el 100% del IVA, por lo que directamente se podría deducir en este trimestre la cantidad de 331,59€

En cada año se puede amortizar un máximo del 26% del coste total del producto sin IVA durante 10 años.

**Amortización a 4 años:**

En cada año se podrán amortizar un 25%, suponiendo que el servidor se ha comprado el tercer trimestre, en el primer año podremos amortizar la mitad de ese 25%, es decir, un 12,5%, los siguientes tres años se amortizaría un 25% correspondientemente y el último año otro 12,5%. Lo correspondiente al IVA se amortizaría en el mismo trimestre.

-	Tercer trimestre de 2014, deducción del IVA de 331,59€
-	Año 2014 amortización de 197,375€
-	Años 2015, 2016 y 2017 amortización de 394,75€
-	Año 2018 deducción de 197.375€

**Amortización a 7 años:**

En cada año se podrán amortizar un 14,29%, suponiendo que el servidor se ha comprado el tercer trimestre, en el primer año podremos amortizar la mitad de ese 14,29%, es decir, un 7,14%, los siguientes cinco años se amortizaría un 14,29% correspondientemente y el último año otro 7,14%. Lo correspondiente al IVA se amortizaría en el mismo trimestre.

-	Tercer trimestre de 2014, deducción del IVA de 331,59€
-	Año 2014 amortización de 112,74€
-	Años 2015, 2016, 2017, 2018, 2020 y 2021 amortización de 225,64€
-	Año 2022 deducción de 112,74€


###Ejercicio 2
En este ejercicio voy a comparar los servicios ofrecidos por la empresa acens, concretamente el [servidor dedicado UNO que se expecidifica en esta página](http://www.acens.com/hosting/hosting-gestionado/servidores-dedicados/#precios) y el servicio de [cloud server especificado en esta página.](http://www.acens.com/cloud/cloud-servers/)

**Características comunes del servidor dedicado y cloud server:**

- IBM X3250 1x Quad Core 1.8Ghz
- 2GB RAM
- 2x500GB SATA RAID1

**Precios anuales:**
- Servidor dedicado: 1851,6€ al año.
- Cloud server: 3196,8€ o 0,37€/h  al año.

**Comparación según el porcentaje de uso:**

***Uso del 1%:***
El servidor dedicado no permite dividir el % de uso, por lo que se coste en cualquier caso siempre será el mismo.
- Servidor dedicado: 1851,6€ al año.
- Cloud server: 87.6 horas x 0.37/h = 32,412€ al año.

***Uso del 10%:***
El servidor dedicado no permite dividir el % de uso, por lo que se coste en cualquier caso siempre será el mismo.
- Servidor dedicado: 1851,6€ al año.
- Cloud server: 876 horas x 0.37/h = 324,12€ al año.

Como se puede observar en ambos casos nos resultaría más económico la contratación del servicio de Cloud Server.


###Ejercicio 3
En este ejercicio he creado un pequeño programa en python.

![Script python](http://i.imgur.com/MUxjpgy.png)

He descargado he instalado el paquete CDE, una vez hecho esto he hecho el portable para poder ejecutarlo en otra instalación de linux.

![ejecución del script python](http://i.imgur.com/WwKNRdk.png)

Como podemos ver en la captura, el programa funciona correctamente.


###Ejercicio 4
Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.

Avanzado Instalarlo y crear una aplicación contenedorizada


###Ejercicio 5
Instala el sistema de gestión de fuentes git


###Ejercicio 6
Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README.
Modificar el readme y subir el fichero modificado.

Clono el proyecto con
git clone https://github.com/Capy87/GII-2014.git

Hacemos un touch del fichero README.md

Y realizamos el primer commit con:
git commit -m "Primer commit"

Para guardarlo todo realizamos:
git push


###Ejercicio 7
Comprobar si en la instalación hecha se ha instalado cgroups y en qué punto está montado, así como qué contiene.

Primero accedo al direcotrio de cgroups donde monto el sistema de ficheros virtual: 
sudo mount -t cgroup cgroup /sys/fs/cgroup/

![Contenido de cgroup](http://i.imgur.com/D7Kfr90.png)


###Ejercicio 8 (Pendiente)
- Crear diferentes grupos de control sobre un sistema operativo Linux. Ejecutar en uno de ellos el navegador, en otro un procesador de textos y en uno último cualquier otro proceso. Comparar el uso de recursos de unos y otros durante un tiempo determinado.
- Calcular el coste real de uso de recursos de un ordenador teniendo en cuenta sus costes de amortización. Añadir los costes eléctricos correspondientes.


###Ejercicio 9
####Ejercicio 9.1
Discutir diferentes escenarios de limitación de uso de recursos o de asignación de los mismos a una u otra CPU.
####Ejercicio 9.2
Implementar usando el fichero de configuración de cgcreate una política que dé menos prioridad a los procesos de usuario que a los procesos del sistema (o viceversa).
####Ejercicio 9.3
Usar un programa que muestre en tiempo real la carga del sistema tal como htopy comprobar los efectos de la migración en tiempo real de una tarea pesada de un procesador a otro (si se tiene dos núcleos en el sistema).
####Ejercicio 9.4
Configurar un servidor para que el servidor web que se ejecute reciba mayor prioridad de entrada/salida que el resto de los usuarios.


###Ejercicio 10
Comprobar si el procesador o procesadores instalados tienen estos flags. ¿Qué modelo de procesador es? ¿Qué aparece como salida de esa orden?

Ejecutamos el comando "egrep '^flags.*(vmx|svm)' /proc/cpuinfo" para comprobar si la virtualización a nivel de hardware está activa.

En la ejecución del comando he tenido que quitar el filtro de las extensiones vmx y svm ya que si lo dejaba no aparecía ningún resultado.
En la captura podemos comprobar que existen los flags en nuestro sistema
![Flags del sistema](http://i.imgur.com/4vkScbZ.png)

Para conocer el modelo del procesador lo hacemos en /proc/cpuinfor
![Modelo del procesador](http://i.imgur.com/JmBn4NV.png)

En la captura podemos ver que aparece la marca, el modelo, número de cores que tenemos disponibles, velocidad de CPU y cantidad de memoria cache.


###Ejercicio 11
