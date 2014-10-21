# Ejercicio 1 -  Jose Antonio Plata Muñoz
El servidor que he elegido ha sido el siguiente:

*HP ProLiant G7 MicroServer AMD Turion II N54L/2GB/250GB*

Precio: 189€



 [Enlace para Comprar](http://www.pccomponentes.com/hp_proliant_g7_microserver_amd_turion_ii_n54l_2gb_250gb.html)

Si suponemos que amortizamos un 10% anual por ejemplo. Tendremos que en 4 años, habremos amortizado 75.6€ del total. Y en 7 años 132.3€. Obviamente en 10 años habremos amortizado el total del servidor.


# Ejercicio 2

Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.

Hemos elegido un servidor cloud en axarnet:

[Cloud Server ] (https://www.axarnet.es/servidores-cloud/?gclid=CjwKEAjwwo2iBRCurdSQy9y8xWcSJABrrLiSKhtPgebREZQF8Mo23TswdK0qg16YDXxdOOXuYo7jnBoCpwjw_wcB)

8 GB RAM
2 vCPU
250GB Disco
Precio: 49,95 € al mes

[Server VPS](http://www.hostinger.es/hosting-vps)

8GB RAM
180GB Disco
6000GB ancho de banda
Precio: 55,95€ al mes


Son precios fijos por lo tantos pagaremos lo mismo utlicemos lo que utilicemos. Obviamente si solo se va a utilizar un 1% del tiempo o un 10%, nos interesaría mas una empresa que nos de la opción de pagar por utilización. Normalmente con ese tiempo de utilización saldrá mas barato un Cloud Server que un VPS.

# Ejercicio 3.2
Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con CDE y probarlo en diferentes distribuciones.

He utilizado un programa simple que imprime una cadena de texto. He descargado CDE:

[Carpeta de CDE](http://imgur.com/1MXynFt)

He empaquetado el programa y vemos como funciona perfectamente:


[Comprobando que ejecuta](http://imgur.com/Rch8uM9)

# Ejercicio 4


Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.

He realizado el tutorial, aquí una imagen para demostrarlo.

[Docker](http://imgur.com/Q2yCQvU)

# Ejercicio 5

Instala el sistema de gestión de fuentes git

Simplemente ponemos:

sudo apt-get install git

# Ejercicio 6

Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README.
Modificar el readme y subir el fichero modificado.

gedit README.md &
clear
git commit -a -m "README.md"
git push

![En GitHub](http://imgur.com/79pV29I)


# Ejercicio 7

Comprobar si en la instalación hecha se ha instalado cgroups y en qué punto está montado, así como qué contiene.

[Montado en /sys/fs/cgroup](http://imgur.com/6Gvpb4s)

En la imagen se aprecia lo que contiene.

# Ejercicio 8

Crear diferentes grupos de control sobre un sistema operativo Linux. Ejecutar en uno de ellos el navegador, en otro un procesador de textos y en uno último cualquier otro proceso. Comparar el uso de recursos de unos y otros durante un tiempo determinado.

Después de tener bastantes problemas, siguiendo el siguiente tutorial: [Tutorial](http://elpuig.xeill.net/Members/vcarceler/articulos/introduccion-a-los-grupos-de-control-cgroups-de-linux)

He logrado que medio funcione.

[Comandos utilizados para realizar el montaje](http://imgur.com/nZRw81w)







