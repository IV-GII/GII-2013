
#Ejercicio 1#

## Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar este artículo en Infoautónomos sobre el tema. ##

[HP ProLiant ML310e G8 XE E3-1220/8GB/2TB](http://www.pccomponentes.com/hp_proliant_ml310e_g8_xe_e3_1220_8gb_2tb.html)

Precio con IVA: 720 €

Precio sin IVA: 568,8 €

Suponiendo que el equipo se compra en enero:

**Amortización a 4 años**

Cada año se amortizaría un 25%, con lo que tendríamos una cantidad  de 568,8 * 0.25 = 142,2 € cada año.

**Amortización a 7 años**

Cada año se amortizaría un 14.28%, con lo que tendríamos una cantidad de 568,8 * 0.1428 = 81,22 € cada año.



#Ejercicio 2#

##Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.##

[Servidor dedicado](http://www.acens.com/hosting/hosting-gestionado/servidores-dedicados/)
1x Quad Core 
2GB RAM
2x500GB SATA RAID1
Precio:154,3 € / mes

[Servidor cloud](http://www.acens.com/cloud/cloud-servers/)
vCPU:	4
RAM:  2
Disco: 1000GB
Precio: 446.4 €/mes

Precio anual en Servidor Dedicado: 154,3€/mes * 12 = 1851,6 €/año.

Precio anual en Cloud Server: 446.4 €/mes(0.62€/h) * 12 = 5356,8 €/año.

+ Si se utiliza un 1% del tiempo :
  + Servidor Dedicado: 1851,6 €/año.
  + Cloud Server: 53,568 €/año (30x24x12=8760 horas/año x 0.62€/h = 5356,8 €).

+ Si se utiliza un 10% del tiempo :
  + Servidor Dedicado: 1851,6 €/año.
  + Cloud Server: 535,68 €/año 


#Ejercicio 3#
##  ¿Qué tipo de virtualización es la más adecuada para: alojar varios clientes en un sólo servidor, crear un sistema efiiciente de web + middleware + base de datos, un sistema de prueba de software e integración continua? Responder aquí y razonar.##
+ Alojar varios clientes en un sólo servidor:
**Virtualización a nivel de sistema operativo** ya que permite que anfitrión y cliente usen el mismo sistema operativo pero con invitados aislados del anfitrión y entre sí 
+ Crear un sistema eficiente de web +middleware+ base de datos:
**Virtualización plena**, ya que nos permite virtualizar todos los aspectos de un ordenador para poder ejecutar sistemas operativos y otros programas sin modificar. 
+ Sistema de prueba de software e integración continua 
**Virtualización de entornos de desarrollo** ya que permite reproducir entornos de producción de la forma más fiel posible y probar una aplicación en diferentes versiones con una sola orden.

##Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.##
Instalamos CDE:
!(https://github.com/leocm89/prueba/tree/master/Imagenes/ejercicio3.png)

Creamos un programa en python:
~~~~
#!/usr/bin/python
# -*- coding: utf-8 -*-
limite = input("Introduce hasta que número quieres calcular los primos: ")

l = range(limite)


for i in range(2, limite):
  if l[i] != -1:   # Si no esta marcado es primo
    print i
    
  for h in range(i, limite, i):
    l[h] = -1 # Marcamos los múltiplos de i
~~~
Le damos los permisos de ejecución correspondientes y usamos cde para crear el paquete portable.

~~~
cde ./criba.py
 ~~~

#Ejercicio 4#

##Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.##

![Sin titulo](https://github.com/leocm89/prueba/blob/master/Imagenes/ejercicio4.png)

# Ejercicio 5 #
## Instala el sistema de gestión de fuentes git ##

Para instalar git en ubuntu ejecutamos en la terminal el siguiente comando:
~~~
 sudo apt-get install git 
~~~


# Ejercicio 6 #
## 1.Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README. ##
Creamos el repositorio marcando la opcón incluir el fichero README:

![Sin titulo](https://github.com/leocm89/prueba/blob/master/Imagenes/ejercicio6_1.PNG)

Lo descargamos en nuestra máquina mediante git usando git clone:

![Sin titulo](https://github.com/leocm89/prueba/blob/master/Imagenes/ejercicio6_2.PNG)

Modificamos el fichero README y subimos los cambios añadiendo el fichero y salvamos mediante un commit.

![Sin titulo](https://github.com/leocm89/prueba/blob/master/Imagenes/ejercicio6_3.PNG)


# Ejercicio 7 #
## Comprobar si en la instalación hecha se ha instalado cgroups y en qué punto está montado, así como qué contiene ##
En Ubuntu 14.04, se monta por defecto y está en /sys/fs/cgroup 

![Sin titulo](https://github.com/leocm89/prueba/blob/master/Imagenes/ejercicio7.PNG)




# Ejercicio 10 #
##Comprobar si el procesador o procesadores instalados tienen estos flags. ¿Qué modelo de procesador es? ¿Qué aparece como salida de esa orden?##
Lanzamos el comando indicado.
~~~

egrep '^flags.*(vmx|svm)' /proc/cpuinfo

~~~

Al no mostrar nada, indica que el procesador no usa esta tecnologia.

![Sin titulo](https://github.com/leocm89/prueba/blob/master/Imagenes/ejercicio3.PNG)



# Ejercicio 11 #
## Comprobar si el núcleo instalado en tu ordenador contiene este módulo del kernel usando la orden kvm-ok. ##
La ejecutamos y nos pide que instalamos cpu-cheker:

![Sin titulo](https://github.com/leocm89/prueba/blob/master/Imagenes/ejercicio11_1.PNG)

Y vemos que mi sistema no lo soporta

![Sin titulo](https://github.com/leocm89/prueba/blob/master/Imagenes/ejercicio11_2.PNG)
