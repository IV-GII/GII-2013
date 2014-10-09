Lista de ejercicios Israel Blancas Álvarez
============================

##Sesión 29-09-2014##

###Ejercicio 1###

#####Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar este artículo en Infoautónomos sobre el tema.#####

[Servidor al que calcular la amortización](http://www.pccomponentes.com/hp_proliant_ml310e_g8_xe_e3_1220_8gb_2tb.html?gclid=CKGXptPKiMECFfHKtAodVQ0ABQ)
El servidor tiene un precio de 645€.


+ El precio sin IVA (base imponible) es de 533.06€. El IVA es de 645-533.06=111,94€.


######Amortización a 4 años######
Se amortiza un 25% de la base imponible/año. Es decir, 133,265€/año. 
Suponiendo que lo comprásemos ahora, en el año 2014 solo amortizaría los meses de octubre, noviembre y diciembre (la amortización por mes es de 11,106€).

Amortización:
* Año 2014: 11,106*3=33,318€
* Año 2015: 133,265€
* Año 2016: 133,265€
* Año 2017: 133,265€
* Año 2018: 11,106*9=99,954€


######Amortización a 7 años######
Se amortiza un 14,29% de la base imponible/año. Es decir, 76,15€/año. 
Suponiendo que lo comprásemos ahora, en el año 2014 solo amortizaría los meses de octubre, noviembre y diciembre (la amortización por mes es de 6,35€).

Amortización:
* Año 2014: 6.35*3=19,05€
* Año 2015: 76,15€
* Año 2016: 76,15€
* Año 2017: 76,15€
* Año 2018: 6,35*9=57,15€


***

###Ejercicio 2###
#####Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.#####

[VPS Hostinger Plan 1](http://www.hostinger.es/hosting-vps)
* 1024 MB RAM
* 1.00 GB transferencia mensual
* Espacio en disco de 20 GB
* 6.99€/mes

[Amazon EC2 t2.micro](http://aws.amazon.com/es/ec2/pricing/)
* 1 vCPU
* 1 GiB de memoria
* $0.013/hora = 0.01€/hora
* Almacenamiento dinámico

######Si solo se usa un 1%######
+ **Hostinger** : se pagaría 6.99€/mes * 12 meses = 83.88€/año
+ **Amazon** : $0.013/hora * 24h/día * 30 días/mes * 12 meses/año) * 0.01 = $1.1232/año = 0.891326€/año


######Si solo se usa un 10%######
+ **Hostinger** : se pagaría 6.99€/mes * 12 meses = 83.88€/año
+ **Amazon** : $0.013/hora * 24h/día * 30 días/mes * 12 meses/año) * 0.1 = $1.1232/año = 8.91326€/año


***

###Ejercicio 3###
#####
1. ¿Qué tipo de virtualización usarías en cada caso? Comentar en el foro
2. Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.#####

######[Parte 1ª](https://github.com/JJ/GII-2014/issues/71#issuecomment-58189129)######
######Parte 2ª#####

He utilizado el siguiente código (en programa.py)

```python
#!/usr/bin/env python
# -*- coding: utf-8 -*- 

import random

def main():
	intentos=0
	numero = random.randint(1, 100)

	while (intentos<10):
		numero_usuario = int(input("Inserte un número:"))
		intentos+=1
		if numero_usuario>numero:
			print("El número a adivinar es menor")
		elif numero_usuario<numero:
			print("El número a adivinar es mayor")
		else:
			print("Enhorabuena, has acertado")
			return

	if (intentos==10):
		print("Has superado el número de intentos")

if __name__ == '__main__': 
    main()

```

Una vez comprobado que funciona, 

+ Instalo CDE utilizando "sudo apt-get install cde"
+ Ejecuto mi programa utilizando "cde python programa.py"
+ Entro al directorio "/cde-package/cde-root/home/miUsuario" con "cd".
+ He ejecutado "./python.cde programa.py", ya que hay que ejecutar el programa con extensión "cde" y pasarle como parámetro aquellos ficheros que necesitemos.

Al llevarlo a otra máquina, realizo el último paso y compruebo que funciona correctamente.


***

###Ejercicio 4###
#####Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.
Avanzado Instalarlo y crear una aplicación contenedorizada#####

Tras hacer el tutorial, he procedido a realizar un empaquetado en mi PC.

+ He instalado la utilidad como se especifica [en este enlace](https://docs.docker.com/installation/ubuntulinux/)
+ He descargado la imagen del tutorial con "sudo docker pull learn/tutorial" (he utilizado sudo por que el sistema me alertaba de un error por problemas con permisos)
+ Ayudándome de la [guía](https://docs.docker.com/reference/run/), he ejecutado la imagen con la siguiente orden "sudo docker run -i -t learn/tutorial /bin/bash"
+ He instalado php5 y nano en la imagen, mediante el comando "apt-get install nano php5"
+ He escrito un código PHP que escribe un mensaje en pantalla y lo he colocado en "/usr/bin" (esto es para que PHP pueda encontrarlo. Cuando he colocado el fichero en otra ruta, he tenido problemas por que no lo encontraba)
+ Tras salir de la imagen (ejecutando "exit"), guardo la imagen "sudo docker commit 71c3 hola"
+ Ejecuto el script desde fuera de la imagen escribiendo el comando "sudo docker run -i -t hola php hola.php"


***

###Ejercicio 5###
#####Instala el sistema de gestión de fuentes git#####
Como me encuentro en Ubuntu, simplemente hay que ejecutar:
"sudo apt-get install git"


***

###Ejercicio 6###
#####1. Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README.#####

He creado [un repositorio](https://github.com/iblancasa/iblancasaWordpressTheme) y lo he descargado utilizando:
"git clone https://github.com/iblancasa/iblancasaWordpressTheme.git"

#####2. Modificar el readme y subir el fichero modificado.##########
Como se puede ver en la [web de Github](https://github.com/iblancasa/iblancasaWordpressTheme), he realizado algunas modificacioens en el ["readme"](https://github.com/iblancasa/iblancasaWordpressTheme/blob/master/README.md).



***
***
##Sesión 30-09-2014##

###Ejercicio 7###

#####Crear diferentes grupos de control sobre un sistema operativo Linux. Ejecutar en uno de ellos el navegador, en otro un procesador de textos y en uno último cualquier otro proceso. Comparar el uso de recursos de unos y otros durante un tiempo determinado.#####
+ He montado el sistema de archivos con "sudo mount -t tmpfs cgroup_root /sys/fs/cgroup"
+ He creado el directorio con "sudo mkdir /sys/fs/cgroup/cpuset", donde "cpuset" es el nombre del cgroup
+ Como dentro del directorio no se creó nada, he acudido a buscar en Internet y he encontrado [esto](http://serverfault.com/questions/478946/how-can-i-create-and-use-linux-cgroups-as-a-non-root-user). Al ejecutar el comando "sudo mount -t cgroup -o cpuset cpuset /sys/fs/cgroup/cpuset", para montar el sistema de archivos y "sudo mkdir /sys/fs/cgroup/cpuset/${USER}" y "sudo chown -R ${USER} /sys/fs/cgroup/cpuset/${USER}" para crear el cgroup con el usuario actual, si aparecen los ficheros que se describen en el material de clase.
